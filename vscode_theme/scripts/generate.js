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
  const input_yaml = path.join(__dirname, '../src/gravel_pit.yaml');

  // parse yaml file
  const theme_object = yaml.load(fs.readFileSync(input_yaml), { schema });

  // write yaml file to json
  const output_json = path.join(__dirname, '../theme/gravel_pit_dark.json');
  fs.writeFileSync(output_json, JSON.stringify(theme_object, null, 2));
} catch (e) {
  console.log(e);
}