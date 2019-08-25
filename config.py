import os

class Config:
  SOME_KEY=os.environ.get('SOMEKEY') or 'this string on behalf key'
