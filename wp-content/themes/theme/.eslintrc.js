module.exports = {
  'extends': 'standard',
  'installedESLint': true,
  'plugins': [
    'standard',
    'promise'
  ],
  'env': {
    'browser': true
  },
  'rules': {
    'indent': ['error', 'tab'],
    'no-tabs': 0,
    'no-var': 2,
    'prefer-const': 2
	}
}
