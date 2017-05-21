import sys
from toml import loads
import json

infile = sys.stdin.read()
sys.stdout.write(json.dumps(loads(infile), indent=2))
