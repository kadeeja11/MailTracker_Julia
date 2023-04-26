module Mails

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Mail

@kwdef mutable struct Mail <: AbstractModel
  id::DbId = DbId()
  mailid::String = ""
  name::String = ""
  # uniq::Base.UUID = ""
  organization::String = ""
  count::Int = 0


end

end
