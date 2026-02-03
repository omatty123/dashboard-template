# Teaching Dashboard Template

A reusable template for creating course dashboards with roster, readings, and prep materials.

## Quick Start

1. **Copy this template** to a new directory for your course:
   ```bash
   ./generate.sh my-course-101
   ```

2. **Edit `config.json`** with your course details:
   - Course info (code, title, term, dates)
   - Student roster
   - Schedule with readings

3. **Add student photos** to `photos/` (format: `lastname_firstname.png`)

4. **Add prep data** to `prep/execsummary-N.json` for each session

5. **Deploy** to GitHub Pages or serve locally

## Directory Structure

```
my-course/
├── index.html          # Main dashboard (reads from config.json)
├── config.json         # All course configuration
├── photos/             # Student photos
├── prep/               # Prep JSONs (execsummary-1.json, etc.)
└── print/              # Printable worksheets (optional)
```

## config.json Structure

### Course Info
```json
{
  "course": {
    "code": "HIST 101",
    "title": "Introduction to History",
    "term": "Winter 2026",
    "startDate": "2026-01-05",
    "endDate": "2026-03-13",
    "meetingDays": ["Monday", "Wednesday", "Friday"],
    "syllabusUrl": "https://...",
    "canvasUrl": "https://..."
  }
}
```

### Students
```json
{
  "students": [
    {
      "id": "1",
      "lastName": "Doe",
      "firstName": "Jane",
      "preferredName": "",
      "pronouns": "She/Her",
      "photo": "photos/doe_jane.png"
    }
  ]
}
```

### Schedule
```json
{
  "schedule": [
    {
      "date": "2026-01-05",
      "day": "Monday",
      "week": 1,
      "topic": "Introduction",
      "theme": "Getting Started",
      "textbookRef": "Ch. 1",
      "readings": [
        {
          "title": "Reading Title",
          "author": "Author Name",
          "source": "Book/Journal",
          "pages": "1-25",
          "type": "primary|secondary|theoretical",
          "url": "https://drive.google.com/..."
        }
      ],
      "webLinks": [{"title": "Link", "url": "https://..."}],
      "notes": "Optional notes",
      "special": "Special instructions",
      "noClass": false,
      "assignment": {"name": "Paper 1", "due": "2026-01-15", "dueDay": "Wednesday"},
      "film": {"title": "Film", "director": "Director", "year": 2020, "url": "..."},
      "presentations": false
    }
  ]
}
```

## Prep JSON Structure

Create `prep/execsummary-N.json` for each session:

```json
{
  "executiveSummary": "Main takeaways from the readings...",
  "keyPassages": [
    {"quote": "Important quote", "source": "Author, Book", "page": "123"}
  ],
  "keyQuestions": [
    {
      "question": "Discussion question?",
      "basicAnswer": "Simple answer",
      "midAnswer": "More nuanced answer",
      "advancedAnswer": "Sophisticated answer"
    }
  ],
  "timeline": [
    {"date": "1850", "event": "Something happened"}
  ],
  "connections": {
    "fromPrevious": "How this connects to last class",
    "toNext": "What this sets up for next class"
  }
}
```

## Reading Types

- `primary` - Primary sources (aged parchment style)
- `secondary` - Secondary scholarship (teal accent)
- `theoretical` - Theoretical readings (purple accent)

## Features

- **Roster strip** with student photos
- **Session navigator** with dropdown
- **Reading cards** styled by type
- **Prep data loader** for exec summaries, key passages, questions
- **Timeline view**
- **Assignment tracking**
- **Film/media support**
- **Responsive design**
