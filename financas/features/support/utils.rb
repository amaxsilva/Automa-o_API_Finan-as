def carregar_massa(struct, indice = nil)
    temp_massa = MASSA_APIREST[struct[0]]
    indice_massa = struct.count
    i = 1
      while i < indice_massa
        temp_massa = temp_massa[struct[i]]
        i += 1
      end
    indice.eql?(nil) ? temp_massa.sample : temp_massa[indice]
  end
  