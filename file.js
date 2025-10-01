import fs from 'fs';

import path from 'path';

const filePath = path.join(__dirname, 'file.txt');

fs.writeFile(filePath, 'Hello, world!', (err) => {
    if (err) {
        console.error('Error writing file:', err);
    }
});
