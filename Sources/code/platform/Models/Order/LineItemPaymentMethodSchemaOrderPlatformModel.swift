

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LineItemPaymentMethodSchema
        Used By: Order
    */

    class LineItemPaymentMethodSchema: Codable {
        
        
        public var gateway: PaymentMethodGatewaySchema?
        
        public var modeOfPayment: PaymentMethodModeOfPaymentSchema?
        
        public var amountPaid: Int?
        
        public var paymentIdentifier: String?
        
        public var transactionParty: PaymentMethodTransactionPartySchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case gateway = "gateway"
            
            case modeOfPayment = "mode_of_payment"
            
            case amountPaid = "amount_paid"
            
            case paymentIdentifier = "payment_identifier"
            
            case transactionParty = "transaction_party"
            
        }

        public init(amountPaid: Int? = nil, gateway: PaymentMethodGatewaySchema? = nil, modeOfPayment: PaymentMethodModeOfPaymentSchema? = nil, paymentIdentifier: String? = nil, transactionParty: PaymentMethodTransactionPartySchema? = nil) {
            
            self.gateway = gateway
            
            self.modeOfPayment = modeOfPayment
            
            self.amountPaid = amountPaid
            
            self.paymentIdentifier = paymentIdentifier
            
            self.transactionParty = transactionParty
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gateway = try container.decode(PaymentMethodGatewaySchema.self, forKey: .gateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(PaymentMethodModeOfPaymentSchema.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionParty = try container.decode(PaymentMethodTransactionPartySchema.self, forKey: .transactionParty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gateway, forKey: .gateway)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(transactionParty, forKey: .transactionParty)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LineItemPaymentMethodSchema
        Used By: Order
    */

    class LineItemPaymentMethodSchema: Codable {
        
        
        public var gateway: PaymentMethodGatewaySchema?
        
        public var modeOfPayment: PaymentMethodModeOfPaymentSchema?
        
        public var amountPaid: Int?
        
        public var paymentIdentifier: String?
        
        public var transactionParty: PaymentMethodTransactionPartySchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case gateway = "gateway"
            
            case modeOfPayment = "mode_of_payment"
            
            case amountPaid = "amount_paid"
            
            case paymentIdentifier = "payment_identifier"
            
            case transactionParty = "transaction_party"
            
        }

        public init(amountPaid: Int? = nil, gateway: PaymentMethodGatewaySchema? = nil, modeOfPayment: PaymentMethodModeOfPaymentSchema? = nil, paymentIdentifier: String? = nil, transactionParty: PaymentMethodTransactionPartySchema? = nil) {
            
            self.gateway = gateway
            
            self.modeOfPayment = modeOfPayment
            
            self.amountPaid = amountPaid
            
            self.paymentIdentifier = paymentIdentifier
            
            self.transactionParty = transactionParty
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gateway = try container.decode(PaymentMethodGatewaySchema.self, forKey: .gateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(PaymentMethodModeOfPaymentSchema.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionParty = try container.decode(PaymentMethodTransactionPartySchema.self, forKey: .transactionParty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gateway, forKey: .gateway)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(transactionParty, forKey: .transactionParty)
            
            
        }
        
    }
}


