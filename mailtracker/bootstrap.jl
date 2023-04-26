(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using MailTracker
push!(Base.modules_warned_for, Base.PkgId(MailTracker))
MailTracker.main()
