import { fundingContractConfig } from "./config.js"
let web3;
let fundingContract;
const main = async () => {
    if (window.ethereum == undefined)
        return alert("please install metamask or any other comptabile ethereum provider")

    console.log("metamask or other providers are installed")
    try {
        await window.ethereum.request({ method: "eth_requestAccounts" })
        let myAddress = await getMyAddress()
        myAddressEle.innerText = myAddress

        web3 = new Web3(window.ethereum)
        fundingContract = new web3.eth.Contract(fundingContractConfig.ABI, fundingContractConfig.address)


       // await loadInfo()

    }
    catch (e) {
        alert(e.message)
    }


}

btnCreateProject.addEventListener("click", async () => {
    const _title = titleInput.value;
    const _desc = descInput.value;
    


    fundingContract.methods.Create(_title,_desc).send({
        from: await getMyAddress(),
        to: fundingContractConfig.address,
        
    }).then(async receipt => {

        
    })
        

})

const getMyAddress = async () => {
    return (await window.ethereum.request({ method: "eth_accounts" }))[0]
}


const addProject = (addrDonator, amount) => {
    let div = document.createElement("div");

    div.innerHTML = `
        <div class="col">
            <div class="card shadow-sm">
                <h2 class="projectTitle">${Project_title}</h2>
                <div class="card-body">
                    <p class="card-text textProject">${Project_dec}</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                            <button class="btn btn-success" type="button" onclick="prompt('Donnez la somme en ETH à envoyer pour ce projet')">
                                Donate
                            </button>
                            <button class="btn btn-primary" type="button" onclick="alert('1- ${addrDonator} : ${amount} ETH')">
                                List of donors
                            </button>
                        </div>
                        <small class="text-body-secondary">${amount} ETH</small>
                    </div>
                </div>
            </div>
        </div>
    `;

    document.getElementById("MainDev").appendChild(div);
}

main()