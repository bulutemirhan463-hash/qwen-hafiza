# Memory Management Protocol

## Memory Hierarchy
1. **Global Memory (QWEN.md)**: User preferences, language, global context
2. **Project Memory (PROJECT_MEMORY.md)**: Active projects, status, locations
3. **Session Memory (todos/)**: Current session tasks and progress
4. **Context Memory**: In-memory understanding of current situation

## When to Save Memory
### ALWAYS Save:
- Completed tasks and their outcomes
- New project locations discovered
- Configuration changes made
- Errors encountered and solutions
- User preferences stated
- Important file paths found

### Update Regularly:
- Project status changes
- Task completion
- Working directory changes
- Active issues being resolved

## Memory Format
Use clear, concise entries:
```markdown
## [Date] - [Topic]
- What was done
- Where it was done
- Result/Status
- Next steps if any
```

## Loading Protocol
At session start:
1. Load QWEN.md → Understand user preferences
2. Load PROJECT_MEMORY.md → Get project context
3. Load todos/ → See what was being worked on
4. Synthesize → Understand where to continue from

## Critical Information to Track
- Project locations (full paths)
- Running services (ports, URLs)
- Configuration files modified
- Dependencies installed
- Tests created or modified
- Errors and their fixes
- User feedback received

## Self-Correction
If memory is incomplete or outdated:
1. Ask user for clarification
2. Explore filesystem to verify
3. Update memories with confirmed information
4. Note any discrepancies found
