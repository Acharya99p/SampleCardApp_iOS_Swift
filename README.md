# SampleCardApp

## Features:

*Easily usable
*Swift 4.0
*Simple Swift syntax
*Cool flip animation
*Customizable
*Universal (iPhone & iPad)
*Lightweight readable codebase

## How to deploy and run.

*Open CardSample.xcodeproj file in XCode.
*Click on Run to run the application on simulator.
*If you want to run in device then attach your device and selected it from device section.
*Add provision profile and certificate if not.
*Run the application for selected device.


## How to Integrate :	

*1.Import Payment.

*2. Create a PaymentCreditCard instance and link it to a Payement instances:

- let card = PaymentCreditCard()
- let payment = Payment(creditCard: card)

*3.Add your card to a view and set its position: 

- view.addSubview(card)
- card.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
- card.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

*4. link your textFields to the payment object: 

- payment.numberTextField = NumberTF
- payment.holderNameTextField = NameTF
- payment.validityTextField = ValidityTF
- payment.cryptogramTextField = cryptoTF


## Extracting data from the credit card :

*1. Credit card number :
- payment.getCardNumber()

*2. Credit card holder name :
- payment.getCardHolderName()

*3. Credit card validity :
- payment.getCardValidity()

*4. Credit card cryptogram
- payment.getCardCryptogram()




