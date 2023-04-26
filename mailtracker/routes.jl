using Genie.Router
using Genie.Requests

route("/") do
  serve_static_file("welcome.html")
end

using Mails
p = Mail(name="Kadeeja")
q = Mail(organization="abc")
r = Mail(mailid="126@gmail.com")

using SearchLight
p.count += 1
q.count += 1
r.count += 1

route("/Track") do
  nam = payload(:p)
  org = payload(:q)
  mai = payload(:r)

  check = findone(Mail, mailid=mai, name=nam, organization=org)

  if check === nothing
    ch = Mail(mailid=mai, name=nam, organization=org, count=1)
    save(ch)
  else
    check.count += 1
    save(check)
  end
end