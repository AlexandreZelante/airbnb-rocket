//Métodos que são criados dentro de cada controller
//index, show, store, update, destroy
const User = require("../models/User");

module.exports = {
    async store(req, res) {
        const { email } = req.body;

        let user = await User.findOne({ email });

        if (!user) {
            user = await User.create({ email });
        }

        // const user = await User.create({ email });
        res.send(user);
    }
};
