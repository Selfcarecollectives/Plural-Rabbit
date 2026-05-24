/**
 * Plural Rabbit — Web App
 * Pure vanilla JS, no build step required.
 * Loads a Full Data Export JSON, allows editing, and re-exports.
 */

'use strict';

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------
let appData = null;       // The loaded Full Data Export object
let activeTab = 'profiles';

// ---------------------------------------------------------------------------
// Boot
// ---------------------------------------------------------------------------
document.addEventListener('DOMContentLoaded', () => {
  document.getElementById('load-btn').addEventListener('click', loadDataFile);
  document.getElementById('export-btn').addEventListener('click', exportData);

  // Tab navigation
  document.querySelectorAll('.tab-btn').forEach(btn => {
    btn.addEventListener('click', () => switchTab(btn.dataset.tab));
  });

  // Try to restore from sessionStorage (non-persistent — clears on tab close)
  const cached = sessionStorage.getItem('plural_rabbit_data');
  if (cached) {
    try {
      appData = JSON.parse(cached);
      showContent();
    } catch (_) {}
  }
});

// ---------------------------------------------------------------------------
// Data loading
// ---------------------------------------------------------------------------
function loadDataFile() {
  const input = document.getElementById('data-file-input');
  const file = input.files[0];
  if (!file) { alert('Please select a data.json file first.'); return; }

  const reader = new FileReader();
  reader.onload = e => {
    try {
      const parsed = JSON.parse(e.target.result);
      validateExport(parsed);
      appData = parsed;
      sessionStorage.setItem('plural_rabbit_data', e.target.result);
      showContent();
    } catch (err) {
      alert('Failed to load data: ' + err.message);
    }
  };
  reader.readAsText(file);
}

function validateExport(data) {
  if (!data.version) throw new Error('Missing version field — invalid export file.');
  if (!data.export_type) throw new Error('Missing export_type — invalid export file.');
  // Warn on unknown version but don't block
  const [major] = (data.version || '').split('.');
  if (parseInt(major, 10) > 1) {
    console.warn('Export version is newer than this web app. Some fields may not render.');
  }
}

// ---------------------------------------------------------------------------
// Content display
// ---------------------------------------------------------------------------
function showContent() {
  document.getElementById('load-section').classList.add('hidden');
  document.getElementById('content-section').classList.remove('hidden');

  // Set app name from system data
  if (appData.system && appData.system.name) {
    document.getElementById('app-name').textContent = appData.system.name;
    document.title = appData.system.name + ' — Web App';
  }

  renderActiveTab();
}

function switchTab(tab) {
  activeTab = tab;
  document.querySelectorAll('.tab-btn').forEach(btn => {
    btn.classList.toggle('active', btn.dataset.tab === tab);
  });
  document.querySelectorAll('.tab-panel').forEach(panel => {
    panel.classList.toggle('active', panel.id === 'tab-' + tab);
  });
  renderActiveTab();
}

function renderActiveTab() {
  switch (activeTab) {
    case 'profiles': renderProfiles(); break;
    case 'fronting': renderFronting(); break;
  }
}

// ---------------------------------------------------------------------------
// Profiles tab
// ---------------------------------------------------------------------------
function renderProfiles() {
  const grid = document.getElementById('profiles-grid');
  grid.innerHTML = '';

  const profiles = appData?.profiles ?? [];
  const active = profiles.filter(p => !p.is_archived && !p.is_curated_view);

  if (active.length === 0) {
    grid.innerHTML = '<p>No profiles in this export.</p>';
    return;
  }

  active.forEach(profile => {
    const card = document.createElement('div');
    card.className = 'profile-card';

    const avatar = document.createElement('div');
    avatar.className = 'profile-avatar';

    if (profile.profile_image_data) {
      const img = document.createElement('img');
      img.src = 'data:image/jpeg;base64,' + profile.profile_image_data;
      img.alt = profile.name;
      avatar.appendChild(img);
    } else {
      avatar.textContent = (profile.name || '?')[0].toUpperCase();
      if (profile.theme_hex) {
        avatar.style.background = profile.theme_hex;
      }
    }

    const name = document.createElement('div');
    name.className = 'profile-name';
    name.textContent = profile.name || 'Unnamed';

    const pronouns = document.createElement('div');
    pronouns.className = 'profile-pronouns';
    pronouns.textContent = profile.pronouns || '';

    card.appendChild(avatar);
    card.appendChild(name);
    card.appendChild(pronouns);
    grid.appendChild(card);
  });
}

// ---------------------------------------------------------------------------
// Fronting tab
// ---------------------------------------------------------------------------
function renderFronting() {
  const panel = document.getElementById('fronting-panel');
  panel.innerHTML = '';

  // The fronting state is determined by the most recent history entries
  // or a dedicated fronting_state field (added in Phase 2 export format).
  // For now, render a placeholder.
  panel.innerHTML = '<p>Fronting state will be shown here in Phase 2.</p>';
}

// ---------------------------------------------------------------------------
// Export
// ---------------------------------------------------------------------------
function exportData() {
  if (!appData) { alert('No data loaded.'); return; }

  // Update the exported_at timestamp
  appData.exported_at = new Date().toISOString();

  const blob = new Blob([JSON.stringify(appData, null, 2)], {
    type: 'application/json'
  });
  const url = URL.createObjectURL(blob);

  const a = document.createElement('a');
  a.href = url;
  a.download = 'plural_rabbit_export_' + Date.now() + '.json';
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}
