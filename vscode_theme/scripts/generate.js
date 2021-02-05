const yaml = require('js-yaml');
const fs = require('fs');
const path = require('path');

// alpha type support in yaml
const withAlphaType = new yaml.Type('!alpha', {
  kind: 'sequence',
  construct: ([hexRGB, alpha]) => hexRGB + alpha,
  represent: ([hexRGB, alpha]) => hexRGB + alpha
});

// extend yaml schema
const schema = yaml.DEFAULT_SCHEMA.extend(withAlphaType);

try {
  const gravel_input_yaml = path.join(__dirname, '../src/gravel_pit.yaml');
  const dracula_input_yaml = path.join(__dirname, '../src/dracula_pit.yaml');

  // parse yaml file
  const gravel_theme_object = yaml.load(fs.readFileSync(gravel_input_yaml), { schema });
  const dracula_theme_object = yaml.load(fs.readFileSync(dracula_input_yaml), { schema });

  // write theme files to json

  // gravel theme
  const gravel_output_json = path.join(__dirname, '../theme/gravel_pit_dark.json');
  fs.writeFileSync(gravel_output_json, JSON.stringify(gravel_theme_object, null, 2));

  // dracula theme
  const dracula_output_json = path.join(__dirname, '../theme/dracula_pit_dark.json');
  fs.writeFileSync(dracula_output_json, JSON.stringify(dracula_theme_object, null, 2));
} catch (e) {
  console.log(e);
}