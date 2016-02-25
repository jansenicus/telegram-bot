local function user_print_name(user)
   if user.print_name then
      return user.print_name
   end
   local text = ''
   if user.first_name then
      text = user.last_name..' '
   end
   if user.lastname then
      text = text..user.last_name
   end
   return text
end


local function run(msg, matches)
  local senderName = user_print_name(msg.from)
  local strCommand = "python /home/administrator/NOTIFIKASI/LOAN/fetchLoan.pyc "..matches[1].." "..matches[2].." "..matches[3].." "..matches[4].." "..senderName
  --local handle = io.popen(strCommand)
  os.execute(strCommand)
  return
end

return {
  description = "Menarik data dari Dashboard Pinjaman LoanPro",
  usage = "------------------------\nFormat perintah monitoring pinjaman:\nPinjaman Mikro\n!mikro [kupedes/ kuprak/ kur/ gbt] [kanwil/ kanca/ uker] [kode cabang]\n\nPinjaman Ritel\n!ritel [kretap/ kresun/ cashcoll/ noncashcoll/ pitung] [kanwil/ kanca/ uker] [kode cabang]\n\nPinjaman Program\n!program [kur/ nonkur] [kanwil/ kanca/ uker] [kode cabang]\n\nPinjaman Konsumer\n!konsumer [kpr/kmg/mobil] [kanwil/ kanca/ uker] [kode cabang]\n\nContoh:\n!mikro kupedes kanwil 0853\n!mikro kupedes kanca 0418\n!mikro kupedes uker 3868\n\n!ritel kretap kanwil 0853\n!ritel kretap kanca 0418\n!ritel kretap uker 0019\n\n!program kur kanwil 0853\n!program kur kanca 0418\n!program kur uker 1172\n\n!konsumer kpr kanwil 0853\n!konsumer kmg kanca 0418\n!konsumer mobil kanca 0509",
  patterns = {
    "^!(mikro) (kupedes) (kanwil) (%d+)",
    "^!(mikro) (kupedes) (kanca) (%d+)",
    "^!(mikro) (kupedes) (uker) (%d+)",
    "^!(mikro) (kuprak) (kanwil) (%d+)",
    "^!(mikro) (kuprak) (kanca) (%d+)",
    "^!(mikro) (kuprak) (uker) (%d+)",
    "^!(mikro) (kur) (kanwil) (%d+)",
    "^!(mikro) (kur) (kanca) (%d+)",
    "^!(mikro) (kur) (uker) (%d+)",
    "^!(mikro) (gbt) (kanwil) (%d+)",
    "^!(mikro) (gbt) (kanca) (%d+)",
    "^!(mikro) (gbt) (uker) (%d+)",
    "^!(ritel) (kretap) (kanwil) (%d+)",
    "^!(ritel) (kretap) (kanca) (%d+)",
    "^!(ritel) (kretap) (uker) (%d+)",
    "^!(ritel) (kresun) (kanwil) (%d+)",
    "^!(ritel) (kresun) (kanca) (%d+)",
    "^!(ritel) (kresun) (uker) (%d+)",
    "^!(ritel) (cashcoll) (kanwil) (%d+)",
    "^!(ritel) (cashcoll) (kanca) (%d+)",
    "^!(ritel) (cashcoll) (uker) (%d+)",
    "^!(ritel) (noncashcoll) (kanwil) (%d+)",
    "^!(ritel) (noncashcoll) (kanca) (%d+)",
    "^!(ritel) (noncashcoll) (uker) (%d+)",
    "^!(ritel) (pitung) (kanwil) (%d+)",
    "^!(ritel) (pitung) (kanca) (%d+)",
    "^!(ritel) (pitung) (uker) (%d+)",
    "^!(konsumer) (kpr) (kanwil) (%d+)",
    "^!(konsumer) (kpr) (kanca) (%d+)",
    "^!(konsumer) (kpr) (uker) (%d+)",
    "^!(konsumer) (mobil) (kanwil) (%d+)",
    "^!(konsumer) (mobil) (kanca) (%d+)",
    "^!(konsumer) (mobil) (uker) (%d+)",
    "^!(konsumer) (kmg) (kanwil) (%d+)",
    "^!(konsumer) (kmg) (kanca) (%d+)",
    "^!(konsumer) (kmg) (uker) (%d+)",
    "^!(program) (kur) (kanwil) (%d+)",
    "^!(program) (kur) (kanca) (%d+)",
    "^!(program) (kur) (uker) (%d+)",
    "^!(program) (nonkur) (kanwil) (%d+)",
    "^!(program) (nonkur) (kanca) (%d+)",
    "^!(program) (nonkur) (uker) (%d+)"
  }, 
  run = run 
}
