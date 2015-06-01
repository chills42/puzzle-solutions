# http://www.codewars.com/kata/52d1bd3694d26f8d6e0000d3

function VigenèreCipher(key, abc) {
  this.encode = function (str) {
    result = ''
    for(i=0;i<str.length;i++) {
      num = abc.indexOf(key[i%key.length])
      charNum = abc.indexOf(str[i])
      if (charNum == -1)
        result += str[i]
      else
        result += abc[(num+charNum)%abc.length]
    }
    return result
  };
  this.decode = function (str) {
    result = ''
    for(i=0;i<str.length;i++) {
      charNum = abc.indexOf(str[i])
      num = abc.indexOf(key[i%key.length])
      if (charNum == -1)
        result += str[i]
      else
        result += abc[(charNum-num+abc.length)%abc.length]
    }
    return result
  };
}
