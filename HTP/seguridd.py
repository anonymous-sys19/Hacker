import time



i=0

while i<2:

      usuario=input(" Ingrese nombre de usuario ... $ ")

      i=i +1

      if str(usuario)=="anom":

            print("      ")
            print(" Verificando ... ")
            time.sleep(1)
            print(" Verificando .. ")
            time.sleep(1)
            print("   Acceso exito")
            print("   ")

            clave=input(" Ingrese su clave ... $ ")

            if str(clave)=="1234":
                  print("   ")
                  print(" Verificando ...  ")
                  time.sleep(0.20)
                  print("   ")
                  print(" Verificando ...  ")
                  print("   ")
                  time.sleep(0.20)
                  print(" Acceso con exito  ")
                  print(" ......... ....... ")
                  print("   ")
                  print("   Bienvenido anonimo")
                  print("   ")
                  break

            else:
                  
                  print("   ")
                  print("verificando ... ")
                  time.sleep(1)
                  print("  Acceso denegado ... ")
                  print("    ")
                  print("    ")
                  print("  Vuelve a intentarlo ...")
                  time.sleep(1)
                  print("  Error ")
                  time.sleep(0.50)
                  print("  Error ")
                  print("   ")

                  if    i==3:
                        print("  ")
                        print("  ------------------------------------ ")
                        print("  Intentos agotados ... ")
                        print("  Prosesando ... ")
                        time.sleep()
                        print("  ")
                        print("  ")
                        print("  Hemos detectado mal uso dela herramienta ... ")
                        print("  Posible mente eres un roobot ")
                        print("  Vuelve a intentarlo de nuevo ... ")
                        print("  ")
                        print("  ")

                        break

      else:

            print("   ")
            print("verificando ... ")
            time.sleep(1)
            print("  Acceso denegado ... ")
            print("   ")
            print("   ")
            print("  Vuelve a intentarlo ...")
            time.sleep(1)
            print("   ")
            print("  Error ")
            time.sleep(0.50)
            print("  Error ")
            print("   ")

            if    i==3:
                  print("   ")
                  print("  ------------------------------------------- ")
                  print("  Intentos agotados ... ")
                  print("  Prosesando ... ")
                  print("   ")
                  time.sleep(1)
                  print(" Error ...  ")
                  time.sleep(0.50)
                  print(" Error ")
                  print("   ")
                  print("  Hemos detectado mal uso dela herramienta ... ")
                  print("  Posible mente eres un roobot ")
                  print("  Vuelve a intentarlo de nuevo ... ")
                  print("   ")
                  print("   ")
