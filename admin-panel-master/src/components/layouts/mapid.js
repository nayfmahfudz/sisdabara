import axios from 'axios';

let tokenSih3 = async function tokenSih3() {
    return await axios.post(`https://geoserver.mapid.io/users/login`,
    { "username": "admin.bbwsbrantas", "password": "@BrantasMapid2020" , "isNav":null},
    { headers: { "Content-Type": "aplication/json" }}
    ).then(response => {
        console.log(response.status)
        return response.data.token;
    }).catch( error => {
      });
}
    exports.insertCH = async (data, result) => {
    try {
       return await tokenSih3();

        // const config = {
        //     headers: {
        //         Authorization: `Bearer ${await token().then(response => {
        //             return response
        //         })}`,
        //         "Accept": "application/json, text/plain, */*",
        //         "Content-Type": "application/json",
        //         "Access-Control-Allow-Origin": "*",
        //         "Access-Control-Allow-Methods": " GET, OPTIONS",
        //         "Access-Control-Allow-Headers": "Content-Type, Content-Length, Accept-Encoding",
        //         "Access-Control-Allow-Credentials": "false",
        //     }
        // };

        // for (let element of data) {
        //     let send = {
        //         "dt": element.date,
        //         "t": moment(new Date()).format("H:m:s"),
        //         "v": element.Nilai,
        //     }
        //     element.Nilai
        //     if (element.Nilai !== 'undefined' && element.Nilai !== '') {
        //         await axios.post(`http://103.53.78.162/api/v2/rain/${element.id}/manual`, send, config).then(response => { console.log(response.data) });
        //     }
        // }
        // const configb = {
        //     headers: {
        //         Authorization: `Bearer ${await tokenSih3().then(response => {
        //             return response
        //         })}`,
        //         "Accept": "application/json, text/plain, */*",
        //         "Content-Type": "application/json",
        //         "Access-Control-Allow-Origin": "*",
        //         "Access-Control-Allow-Methods": " GET, OPTIONS",
        //         "Access-Control-Allow-Headers": "Content-Type, Content-Length, Accept-Encoding",
        //         "Access-Control-Allow-Credentials": "false",
        //     }
        // };
        // for (let element of data) {
        //     let send = {
        //         "id_pos": element.sih3,
        //         "tahun": moment(element.date).format('YYYY'),
        //         "bulan": moment(element.date).format('MM'),
        //         "tanggal": moment(element.date).format('DD'),
        //         "data": element.Nilai,
        //         "jam": moment(new Date()).format('H'),
        //     }
        //     console.log(send);
        //     if (element.sih3 != "" && element.sih3 != null) {
        //         try {
        //             await axios.post(`https://sih3.dpuair.jatimprov.go.id/api/post_data`, send, configb).then(response => { console.log(response.data) });
        //         } catch (error) {
        //             console.log(error)
        //         }
        //     }
        // }
        result(null, true);
    } catch (error) {
        console.log(error);
        result(true, null);
    }
}