# Passe en PowerShell dans le dossier qalam-sense avant de lancer

# ─── Dossiers principaux ─────────────────────────────
$folders = @(
    "src\core\text-adapter",
    "src\core\eye-tracking",
    "src\core\ai-engine\models",
    "src\core\event-bus",
    "src\ui\pages",
    "src\ui\components\dashboard",
    "src\ui\hooks",
    "src\ui\styles\fonts",
    "src\ui\i18n",
    "src\security",
    "src\storage",
    "src\shared",
    "tests\unit",
    "tests\integration",
    "tests\accessibility",
    "docs"
)

foreach ($f in $folders) {
    New-Item -ItemType Directory -Path $f -Force
}

# ─── Fichiers core/text-adapter ──────────────────────
$textAdapterFiles = @(
    "TextAdapterEngine.ts",
    "AdaptationRules.ts",
    "CSSTokenEmitter.ts",
    "BilingualHandler.ts",
    "FontManager.ts",
    "ContrastManager.ts",
    "SpacingController.ts",
    "TransitionEngine.ts",
    "ProfileMatcher.ts"
)
foreach ($file in $textAdapterFiles) {
    New-Item -ItemType File -Path "src\core\text-adapter\$file" -Force
}

# ─── Fichiers core/eye-tracking ─────────────────────
$eyeTrackingFiles = @(
    "EyeTracker.ts",
    "GazeAnonymizer.ts",
    "SaccadeDetector.ts",
    "FixationAnalyzer.ts",
    "BlinkDetector.ts"
)
foreach ($file in $eyeTrackingFiles) {
    New-Item -ItemType File -Path "src\core\eye-tracking\$file" -Force
}

# ─── Fichiers core/ai-engine ─────────────────────
$aiEngineFiles = @(
    "CognitiveModel.ts",
    "DifficultyDetector.ts",
    "ProfileLearner.ts",
    "BiasChecker.ts"
)
foreach ($file in $aiEngineFiles) {
    New-Item -ItemType File -Path "src\core\ai-engine\$file" -Force
}

# ─── Fichiers core/event-bus ─────────────────────
$eventBusFiles = @(
    "EventBus.ts",
    "events.ts",
    "middleware.ts"
)
foreach ($file in $eventBusFiles) {
    New-Item -ItemType File -Path "src\core\event-bus\$file" -Force
}

# ─── Fichiers UI/pages ─────────────────────────────
$uiPagesFiles = @(
    "Home.tsx",
    "Reader.tsx",
    "Settings.tsx",
    "Profile.tsx"
)
foreach ($file in $uiPagesFiles) {
    New-Item -ItemType File -Path "src\ui\pages\$file" -Force
}

# ─── Fichiers UI/components ─────────────────────
$uiComponentsFiles = @(
    "AdaptiveReader.tsx",
    "BilingualText.tsx",
    "ReadingProgress.tsx",
    "AdaptationIndicator.tsx",
    "ConsentDialog.tsx"
)
foreach ($file in $uiComponentsFiles) {
    New-Item -ItemType File -Path "src\ui\components\$file" -Force
}

# ─── Fichiers UI/components/dashboard ─────────────
$dashboardFiles = @(
    "TeacherView.tsx",
    "ParentDashboard.tsx",
    "Charts.tsx",
    "TextUpload.tsx"
)
foreach ($file in $dashboardFiles) {
    New-Item -ItemType File -Path "src\ui\components\dashboard\$file" -Force
}

# ─── Fichiers UI/hooks ─────────────────────────────
$hooksFiles = @(
    "useTextAdapter.ts",
    "useEyeTracking.ts",
    "useBilingual.ts"
)
foreach ($file in $hooksFiles) {
    New-Item -ItemType File -Path "src\ui\hooks\$file" -Force
}

# ─── Fichiers UI/styles ────────────────────────────
$stylesFiles = @(
    "adaptation-tokens.css",
    "rtl-ltr.css",
    "global.css"
)
foreach ($file in $stylesFiles) {
    New-Item -ItemType File -Path "src\ui\styles\$file" -Force
}

# ─── Fichiers UI/i18n ─────────────────────────────
$i18nFiles = @(
    "ar.json",
    "fr.json",
    "i18n.config.ts"
)
foreach ($file in $i18nFiles) {
    New-Item -ItemType File -Path "src\ui\i18n\$file" -Force
}

# ─── Fichiers security ─────────────────────────────
$securityFiles = @(
    "Encryptor.ts",
    "ConsentManager.ts",
    "DataMinimizer.ts",
    "AccessControl.ts",
    "AuditLogger.ts"
)
foreach ($file in $securityFiles) {
    New-Item -ItemType File -Path "src\security\$file" -Force
}

# ─── Fichiers storage ─────────────────────────────
$storageFiles = @(
    "LocalDB.ts",
    "ProfileRepository.ts",
    "SessionRepository.ts",
    "SyncService.ts"
)
foreach ($file in $storageFiles) {
    New-Item -ItemType File -Path "src\storage\$file" -Force
}

# ─── Fichiers shared ──────────────────────────────
$sharedFiles = @(
    "logger.ts",
    "constants.ts",
    "utils.ts"
)
foreach ($file in $sharedFiles) {
    New-Item -ItemType File -Path "src\shared\$file" -Force
}

# ─── Fichiers root / docs ─────────────────────────
$docsFiles = @(
    "ARCHITECTURE.md",
    "PRIVACY.md",
    "DPIA.md",
    "API.md"
)
foreach ($file in $docsFiles) {
    New-Item -ItemType File -Path "docs\$file" -Force
}

# ─── Fichiers root ───────────────────────────────
$rootFiles = @(
    ".env.example",
    "tsconfig.json",
    "vite.config.ts"
)
foreach ($file in $rootFiles) {
    New-Item -ItemType File -Path "$file" -Force
}

Write-Host "`n✅ Tous les dossiers et fichiers ont été créés !"