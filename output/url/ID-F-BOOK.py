
#!/usr/bin/python

import requests
import re
import time


print """    
         /\ \_\ \   /\  __ \   /\  ___\   /\ \/ /    /\  ___\   /\  == \   /\  == \ /\  ___\   
         \ \  __ \  \ \  __ \  \ \ \____  \ \  _"-.  \ \  __\   \ \  __<   \ \  _-/ \ \ \____  
          \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\    \ \_____\ 
           \/_/\/_/   \/_/\/_/   \/_____/   \/_/\/_/   \/_____/   \/_/ /_/   \/_/     \/_____/ 
                                                                                                """



url = (raw_input("Pagina del facebook: > "))

time.sleep(2)

idre = re.compile('"entity_id":"([0-9]+)"')

page = requests.get(url)

print idre.findall(page.content)
