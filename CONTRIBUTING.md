# Contributing Guidelines

Create a branch off of master for your task. After completing your notebook(s) and content review, make the recommended changes and open a pull request from your branch to master. 

We consider it a best practice to clear all cell outputs before commiting. This can be done with 'Kernel > Restart & Clear Output' (or 'Edit > Clear All Outputs' in JupyterLab) from the top menu bar. 

## Naming Conventions

Your notebook name should be kebab-case and it should not contain a Jira task identifier.  If your notebook is in a directory, your directory should have the same name as your notebook but in UpperCamelCase. All files should have descriptive names and refer to the notebooks to which they relate.

## Organization

To prevent the size of this repository from ballooning out of control, large files (>1MB) used to support `data-viz-of-the-week` will be moved to `data-files`. Smaller files (<1MB) can remain in the `data-viz-of-the-week` repository, following the same structure.

Supporting files are data files that are the focus of the analysis in the notebook. Examples include:
- CSVs/tabular data
- Image files (if the image is the focus of the analysis)

Also included are visualizations, such as:
- Static graphics (i.e., PNG, JPEG files)
- Interactive plots (i.e., HTML)

Files NOT required to be moved to `data-files`:
- Embedded images
- Small files (<1 MB)

## Folder names
In `data-files`, supporting files should be placed in a folder named `data`, and visualizations in a folder named `visualizations`:
```
.
├── data                    # Supporting files
└── visualizations          # Visualizations
```
In `data-viz-of-the-week`, the notebook file should remain at the top level, and embedded images in a folder named `img` (alternatively `images`):
```
.
├── img                     # Embedded supporting images
└── ####.ipynb              # Notebook file
```

Note: small (<1MB) files that remain in `data-viz-of-the-week` follow both structures:
```
.
├── data                    # Supporting files
├── visualizations          # Visualizations
├── img                     # Embedded supporting images
└── ####.ipynb              # Notebook file
```

Locally stored files can still be imported using their relative paths, but files moved to the remote `data-files` will have to be referred to by URL:

`pd.read_csv("https://github.com/callysto/data-files/raw/main/data-viz-of-the-week/example-notebook/data/tabular.csv")`

## General Considerations

Similar to [Zen of Python](https://en.wikipedia.org/wiki/Zen_of_Python), your descriptions and code should be readable and easy to explain, and simple is better than complex.

Aim for concise wording and short notebooks, and check that the reading level is appropriate for your audience. Assume that your readers have access to other resources on the topic, or explicitly link to other learning resources.
