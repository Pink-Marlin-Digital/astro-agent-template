---
description: "Task list template for feature implementation"
---

# Tasks: [FEATURE NAME]

**Input**: Design documents from `/specs/[###-feature-name]/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, contracts/

**Tests**: The examples below include test tasks. Tests are OPTIONAL - only include them if explicitly requested in the feature specification.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`
- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions
- **Single project**: `src/`, `tests/` at repository root
- **Web app**: `backend/src/`, `frontend/src/`
- **Mobile**: `api/src/`, `ios/src/` or `android/src/`
- Paths shown below assume single project - adjust based on plan.md structure

<!-- 
  ============================================================================
  IMPORTANT: The tasks below are SAMPLE TASKS for illustration purposes only.
  
  The /speckit.tasks command MUST replace these with actual tasks based on:
  - User stories from spec.md (with their priorities P1, P2, P3...)
  - Feature requirements from plan.md
  - Entities from data-model.md
  - Endpoints from contracts/
  
  Tasks MUST be organized by user story so each story can be:
  - Implemented independently
  - Tested independently
  - Delivered as an MVP increment
  
  DO NOT keep these sample tasks in the generated tasks.md file.
  ============================================================================
-->

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Project initialization and basic structure

- [ ] T001 Create project structure per implementation plan
- [ ] T002 Initialize Astro.js project with TypeScript and Tailwind CSS
- [ ] T003 [P] Configure ESLint with Airbnb standards
- [ ] T004 [P] Setup snapshot testing framework
- [ ] T005 [P] Configure Tailwind CSS with design tokens
- [ ] T006 [P] Setup atomic component directory structure

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Core infrastructure that MUST be complete before ANY user story can be implemented

**⚠️ CRITICAL**: No user story work can begin until this phase is complete

Foundational tasks for Astro.js projects:

- [ ] T007 [P] Create base atomic components (atoms: Button, Input, Label)
- [ ] T008 [P] Setup TypeScript interfaces and types for all components
- [ ] T009 [P] Configure Tailwind design system with consistent tokens
- [ ] T010 [P] Setup page templates and layout components
- [ ] T011 [P] Configure Astro.js build and development environment
- [ ] T012 [P] Setup snapshot testing for all base components
- [ ] T013 [P] Configure performance monitoring and Core Web Vitals tracking
- [ ] T014 [P] Setup accessibility testing framework

**Checkpoint**: Foundation ready - user story implementation can now begin in parallel

---

## Phase 3: User Story 1 - [Title] (Priority: P1) 🎯 MVP

**Goal**: [Brief description of what this story delivers]

**Independent Test**: [How to verify this story works on its own]

### Tests for User Story 1 (OPTIONAL - only if tests requested) ⚠️

**NOTE: Write these tests FIRST, ensure they FAIL before implementation**

- [ ] T015 [P] [US1] Snapshot test for page in src/pages/[page-name].test.astro
- [ ] T016 [P] [US1] Snapshot test for components in src/components/[component-name].test.astro

### Implementation for User Story 1

- [ ] T017 [P] [US1] Create atomic components in src/components/atoms/[component].astro
- [ ] T018 [P] [US1] Create molecular components in src/components/molecules/[component].astro
- [ ] T019 [US1] Create organism components in src/components/organisms/[component].astro (depends on T017, T018)
- [ ] T020 [US1] Create page template in src/components/templates/[template].astro
- [ ] T021 [US1] Implement page in src/pages/[page-name].astro
- [ ] T022 [US1] Add TypeScript interfaces and prop validation
- [ ] T023 [US1] Add Tailwind styling with responsive design

**Checkpoint**: At this point, User Story 1 should be fully functional and testable independently

---

## Phase 4: User Story 2 - [Title] (Priority: P2)

**Goal**: [Brief description of what this story delivers]

**Independent Test**: [How to verify this story works on its own]

### Tests for User Story 2 (OPTIONAL - only if tests requested) ⚠️

- [ ] T024 [P] [US2] Snapshot test for page in src/pages/[page-name].test.astro
- [ ] T025 [P] [US2] Snapshot test for components in src/components/[component-name].test.astro

### Implementation for User Story 2

- [ ] T026 [P] [US2] Create atomic components in src/components/atoms/[component].astro
- [ ] T027 [US2] Create molecular components in src/components/molecules/[component].astro
- [ ] T028 [US2] Create organism components in src/components/organisms/[component].astro
- [ ] T029 [US2] Implement page in src/pages/[page-name].astro
- [ ] T030 [US2] Integrate with User Story 1 components (if needed)

**Checkpoint**: At this point, User Stories 1 AND 2 should both work independently

---

## Phase 5: User Story 3 - [Title] (Priority: P3)

**Goal**: [Brief description of what this story delivers]

**Independent Test**: [How to verify this story works on its own]

### Tests for User Story 3 (OPTIONAL - only if tests requested) ⚠️

- [ ] T031 [P] [US3] Snapshot test for page in src/pages/[page-name].test.astro
- [ ] T032 [P] [US3] Snapshot test for components in src/components/[component-name].test.astro

### Implementation for User Story 3

- [ ] T033 [P] [US3] Create atomic components in src/components/atoms/[component].astro
- [ ] T034 [US3] Create molecular components in src/components/molecules/[component].astro
- [ ] T035 [US3] Create organism components in src/components/organisms/[component].astro
- [ ] T036 [US3] Implement page in src/pages/[page-name].astro

**Checkpoint**: All user stories should now be independently functional

---

[Add more user story phases as needed, following the same pattern]

---

## Phase N: Polish & Cross-Cutting Concerns

**Purpose**: Improvements that affect multiple user stories

- [ ] T037 [P] Documentation updates in docs/
- [ ] T038 Code cleanup and refactoring
- [ ] T039 Performance optimization across all stories
- [ ] T040 [P] ESLint compliance check and fixes
- [ ] T041 [P] TypeScript strict mode validation
- [ ] T042 [P] Snapshot test coverage validation
- [ ] T043 [P] Accessibility audit and fixes
- [ ] T044 [P] Core Web Vitals optimization
- [ ] T045 [P] Tailwind CSS consistency review
- [ ] T046 Run quickstart.md validation

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: No dependencies - can start immediately
- **Foundational (Phase 2)**: Depends on Setup completion - BLOCKS all user stories
- **User Stories (Phase 3+)**: All depend on Foundational phase completion
  - User stories can then proceed in parallel (if staffed)
  - Or sequentially in priority order (P1 → P2 → P3)
- **Polish (Final Phase)**: Depends on all desired user stories being complete

### User Story Dependencies

- **User Story 1 (P1)**: Can start after Foundational (Phase 2) - No dependencies on other stories
- **User Story 2 (P2)**: Can start after Foundational (Phase 2) - May integrate with US1 but should be independently testable
- **User Story 3 (P3)**: Can start after Foundational (Phase 2) - May integrate with US1/US2 but should be independently testable

### Within Each User Story

- Tests (if included) MUST be written and FAIL before implementation
- Models before services
- Services before endpoints
- Core implementation before integration
- Story complete before moving to next priority

### Parallel Opportunities

- All Setup tasks marked [P] can run in parallel
- All Foundational tasks marked [P] can run in parallel (within Phase 2)
- Once Foundational phase completes, all user stories can start in parallel (if team capacity allows)
- All tests for a user story marked [P] can run in parallel
- Models within a story marked [P] can run in parallel
- Different user stories can be worked on in parallel by different team members

---

## Parallel Example: User Story 1

```bash
# Launch all tests for User Story 1 together (if tests requested):
Task: "Contract test for [endpoint] in tests/contract/test_[name].py"
Task: "Integration test for [user journey] in tests/integration/test_[name].py"

# Launch all models for User Story 1 together:
Task: "Create [Entity1] model in src/models/[entity1].py"
Task: "Create [Entity2] model in src/models/[entity2].py"
```

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. Complete Phase 1: Setup
2. Complete Phase 2: Foundational (CRITICAL - blocks all stories)
3. Complete Phase 3: User Story 1
4. **STOP and VALIDATE**: Test User Story 1 independently
5. Deploy/demo if ready

### Incremental Delivery

1. Complete Setup + Foundational → Foundation ready
2. Add User Story 1 → Test independently → Deploy/Demo (MVP!)
3. Add User Story 2 → Test independently → Deploy/Demo
4. Add User Story 3 → Test independently → Deploy/Demo
5. Each story adds value without breaking previous stories

### Parallel Team Strategy

With multiple developers:

1. Team completes Setup + Foundational together
2. Once Foundational is done:
   - Developer A: User Story 1
   - Developer B: User Story 2
   - Developer C: User Story 3
3. Stories complete and integrate independently

---

## Notes

- [P] tasks = different files, no dependencies
- [Story] label maps task to specific user story for traceability
- Each user story should be independently completable and testable
- Verify tests fail before implementing
- Commit after each task or logical group
- Stop at any checkpoint to validate story independently
- Avoid: vague tasks, same file conflicts, cross-story dependencies that break independence



