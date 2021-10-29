class CreditCard extends StatefulWidget {
  String name;
  String number;
  String cvv;
  String month;
  String year;

  CreditCard({Key key, this.name, this.number, this.cvv, this.month, this.year})
      : super(key: key);
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 158,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.delete_outline,
                        color: Colors.grey,
                        size: 25,
                      ),
                      onTap: () {
                        // Action
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.number,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Month / Year",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.month} / ${widget.year}",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SvgPicture.asset(
                    "widgets/credit card/card1.svg",
                    width: 50,
                    height: 50,
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
