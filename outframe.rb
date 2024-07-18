require 'webrick'

# root = File.expand_path '~/public_html'
server = WEBrick::HTTPServer.new :Port => 80 #, :DocumentRoot => root

trap 'INT' do server.shutdown end


# server.mount_proc '/lookup' do |req, res|
#   res.body = 'Hello, world!'
# end

JSON_BODY = <<-TEXT
{
 "resultCount":1,
 "results": [
{"screenshotUrls":[], 
"ipadScreenshotUrls":[
"https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/f0/b2/1f/f0b21fb8-06ae-4efb-faa7-254874f48704/bd6cb2ea-6bc8-41fc-ba71-395c9a074c29_1_hi_res.png/552x414bb.png", 
"https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/50/9a/de/509adea2-2642-d346-fa95-5cd82bf7349c/00f7f09f-74d9-4e97-a7d8-7de2dd1b0539_2_hi_res.png/552x414bb.png", 
"https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/77/5e/2f/775e2f5b-ecf5-47da-4ea3-2338a192aaf1/d55ac8bf-e1ca-4156-9030-02fbdd8843dc_3_hi_res.png/552x414bb.png", 
"https://is1-ssl.mzstatic.com/image/thumb/PurpleSource122/v4/57/72/b4/5772b422-ebee-dfa5-8b96-b67b6aa1bd62/fa3192af-3e61-4482-a1a1-7b5a179d7cd7_4_hi_res.png/552x414bb.png", 
"https://is1-ssl.mzstatic.com/image/thumb/PurpleSource122/v4/66/28/2c/66282c4e-4312-c6c5-d603-9a907f847697/2276cf1f-52d3-460e-a411-9fac3719ffc5_5_hi_res.png/552x414bb.png"], "appletvScreenshotUrls":[], 
"artworkUrl60":"https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/53/81/b5/5381b5c9-ce4e-f617-8215-4df59b452aab/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/60x60bb.jpg", 
"artworkUrl512":"https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/53/81/b5/5381b5c9-ce4e-f617-8215-4df59b452aab/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/512x512bb.jpg", 
"artworkUrl100":"https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/53/81/b5/5381b5c9-ce4e-f617-8215-4df59b452aab/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/100x100bb.jpg", "artistViewUrl":"https://apps.apple.com/us/developer/btl-group-ltd/id723331389?uo=4", 
"supportedDevices":["MacDesktop-MacDesktop", "iPadAir-iPadAir", "iPadAirCellular-iPadAirCellular", "iPadMiniRetina-iPadMiniRetina", "iPadMiniRetinaCellular-iPadMiniRetinaCellular", "iPadAir2-iPadAir2", "iPadAir2Cellular-iPadAir2Cellular", "iPadMini3-iPadMini3", "iPadMini3Cellular-iPadMini3Cellular", "iPadMini4-iPadMini4", "iPadMini4Cellular-iPadMini4Cellular", "iPadPro-iPadPro", "iPadProCellular-iPadProCellular", "iPadPro97-iPadPro97", "iPadPro97Cellular-iPadPro97Cellular", "iPad611-iPad611", "iPad612-iPad612", "iPad71-iPad71", "iPad72-iPad72", "iPad73-iPad73", "iPad74-iPad74", "iPad75-iPad75", "iPad76-iPad76", "iPad812-iPad812", "iPad834-iPad834", "iPad856-iPad856", "iPad878-iPad878", "iPadMini5-iPadMini5", "iPadMini5Cellular-iPadMini5Cellular", "iPadAir3-iPadAir3", "iPadAir3Cellular-iPadAir3Cellular", "iPadSeventhGen-iPadSeventhGen", "iPadSeventhGenCellular-iPadSeventhGenCellular", "iPadProSecondGen-iPadProSecondGen", "iPadProSecondGenCellular-iPadProSecondGenCellular", "iPadProFourthGen-iPadProFourthGen", "iPadProFourthGenCellular-iPadProFourthGenCellular", "iPadAir4-iPadAir4", "iPadAir4Cellular-iPadAir4Cellular", "iPadEighthGen-iPadEighthGen", "iPadEighthGenCellular-iPadEighthGenCellular", "iPadProThirdGen-iPadProThirdGen", "iPadProThirdGenCellular-iPadProThirdGenCellular", "iPadProFifthGen-iPadProFifthGen", "iPadProFifthGenCellular-iPadProFifthGenCellular", "iPadMiniSixthGen-iPadMiniSixthGen", "iPadMiniSixthGenCellular-iPadMiniSixthGenCellular", "iPadNinthGen-iPadNinthGen", "iPadNinthGenCellular-iPadNinthGenCellular", "iPadAirFifthGen-iPadAirFifthGen", "iPadAirFifthGenCellular-iPadAirFifthGenCellular", "iPadTenthGen-iPadTenthGen", "iPadTenthGenCellular-iPadTenthGenCellular", "iPadPro11FourthGen-iPadPro11FourthGen", "iPadPro11FourthGenCellular-iPadPro11FourthGenCellular", "iPadProSixthGen-iPadProSixthGen", "iPadProSixthGenCellular-iPadProSixthGenCellular", "iPadAir11M2-iPadAir11M2", "iPadAir11M2Cellular-iPadAir11M2Cellular", "iPadAir13M2-iPadAir13M2", "iPadAir13M2Cellular-iPadAir13M2Cellular", "iPadPro11M4-iPadPro11M4", "iPadPro11M4Cellular-iPadPro11M4Cellular", "iPadPro13M4-iPadPro13M4", "iPadPro13M4Cellular-iPadPro13M4Cellular"], "features":[], "advisories":[], "isGameCenterEnabled":false, "kind":"software", "averageUserRatingForCurrentVersion":1, "averageUserRating":1, "trackCensoredName":"SecureClient", "languageCodesISO2A":["EN"], "fileSizeBytes":"182372352", "formattedPrice":"Free", "contentAdvisoryRating":"4+", "userRatingCountForCurrentVersion":2, "trackViewUrl":"https://apps.apple.com/us/app/secureclient/id1632312145?uo=4", "trackContentRating":"4+", "currentVersionReleaseDate":"2024-07-10T19:14:28Z", "releaseNotes":"- Various bug fixes.\n- Performance enhancements.", "minimumOsVersion":"12.0", "artistId":723331389, "artistName":"BTL Group Ltd", "price":0.00, "currency":"USD", 
"description":"SecureClient is a standalone test delivery app with offline test support and built-in protections against internet and device failure. SecureClient features lockdown capabilities that prevent you from leaving the test session and accessing any other apps on your device during the examination. Enter your test keycode to begin.", "trackId":1632312145, "trackName":"SecureClient", "primaryGenreName":"Education", "primaryGenreId":6017, "releaseDate":"2022-08-16T07:00:00Z", "bundleId":"com.btl.tablet.delivery", "isVppDeviceBasedLicensingEnabled":true, "sellerName":"BTL EMPLOYEE SHARE TRUSTEE LTD", "version":"1.2024.202", "wrapperType":"software", "genreIds":["6017", "6002"], "genres":["Education", "Utilities"], "userRatingCount":2}]
}
TEXT


class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    # status, content_type, body, query_string = request

    # puts "query_string: #{request.query()}"

    bundleId = request.query['bundleId']
    puts "bundleId: #{bundleId}"

    response.status = 200
    response['Content-Type'] = 'text/plain'
    response.body = JSON_BODY
  end
end

server.mount '/lookup', Simple

server.start