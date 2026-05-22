# Home_Tweak_Flutter_Mobile_App
Project Architecture

This project strictly adheres to a **feature-first / layer-hybrid** architecture pattern as outlined below. Code is strictly split into global utilities (`core/`) and self-contained, domain-isolated modules (`features/`).

```text
lib/
├── core/                        # Shared utilities and global configurations
│   ├── constants/               # App-wide constants (URLs, Paddings, Keys)
│   ├── routing/                 # Navigation setup & routing configurations
│   ├── theme/                   # Global style definitions (Colors, Typography)
│   └── widgets/                 # Reusable global UI widgets (Buttons, Spinners)
│
└── features/                    # Independent modules by domain/business function
    ├── auth/                    # Authentication feature module
    │   ├── data/                # Infrastructure layer (API clients, Repositories, Models)
    │   ├── domain/              # Business logic core (Entities, UseCases)
    │   └── presentation/        # User interface layer
    │       ├── providers/       # Feature state controllers (State Management)
    │       ├── screens/         # Feature views/pages
    │       └── widgets/         # Components exclusive to this feature
    ├── home/                    # Home Dashboard feature module
    └── profile/                 # User Profile feature module
