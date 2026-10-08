def parse_address(address):
  dic={}
  dic['street'], dic['city'], dic['state']= [i.strip() for i in address[:-6].split(',')]
  dic['zip']= address[-5:]
  return dic
