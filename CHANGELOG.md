# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-05-27

### Added
- Initial release of capacitor-scrollbar-hider plugin
- Hide scrollbars on Android using `setVerticalScrollBarEnabled(false)` and `setHorizontalScrollBarEnabled(false)`
- Hide scrollbars on iOS using `showsVerticalScrollIndicator = false` and `showsHorizontalScrollIndicator = false`
- Web platform compatibility with no-op implementation
- Automatic scrollbar hiding on plugin load
- Manual `hideScrollbars()` method for programmatic control
- Cross-platform support for Capacitor 7+
- Complete TypeScript definitions
- Comprehensive documentation with usage examples

### Features
- ✅ **Permanent Solution**: Committed to git, survives Capacitor updates  
- ✅ **Cross-Platform**: Works on web, iOS, and Android  
- ✅ **Automatic**: No manual configuration needed  
- ✅ **Native Feel**: Completely hides scrollbars while preserving functionality
