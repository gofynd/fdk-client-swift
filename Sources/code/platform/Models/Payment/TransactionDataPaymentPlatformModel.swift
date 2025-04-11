

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: TransactionData
        Used By: Payment
    */

    class TransactionData: Codable {
        
        
        public var transactionId: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var status: String
        
        public var aggregatorName: String
        
        public var transactionType: TransactionTypeSchema
        
        public var paymentMode: String
        
        public var amount: Double
        
        public var message: String
        
        public var returnShipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case status = "status"
            
            case aggregatorName = "aggregator_name"
            
            case transactionType = "transaction_type"
            
            case paymentMode = "payment_mode"
            
            case amount = "amount"
            
            case message = "message"
            
            case returnShipmentId = "return_shipment_id"
            
        }

        public init(aggregatorName: String, amount: Double, createdOn: String, message: String, modifiedOn: String, paymentMode: String, returnShipmentId: String, status: String, transactionId: String, transactionType: TransactionTypeSchema) {
            
            self.transactionId = transactionId
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.status = status
            
            self.aggregatorName = aggregatorName
            
            self.transactionType = transactionType
            
            self.paymentMode = paymentMode
            
            self.amount = amount
            
            self.message = message
            
            self.returnShipmentId = returnShipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transactionId = try container.decode(String.self, forKey: .transactionId)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                transactionType = try container.decode(TransactionTypeSchema.self, forKey: .transactionType)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                returnShipmentId = try container.decode(String.self, forKey: .returnShipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(returnShipmentId, forKey: .returnShipmentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: TransactionData
        Used By: Payment
    */

    class TransactionData: Codable {
        
        
        public var transactionId: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var status: String
        
        public var aggregatorName: String
        
        public var transactionType: TransactionTypeSchema
        
        public var paymentMode: String
        
        public var amount: Double
        
        public var message: String
        
        public var returnShipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case status = "status"
            
            case aggregatorName = "aggregator_name"
            
            case transactionType = "transaction_type"
            
            case paymentMode = "payment_mode"
            
            case amount = "amount"
            
            case message = "message"
            
            case returnShipmentId = "return_shipment_id"
            
        }

        public init(aggregatorName: String, amount: Double, createdOn: String, message: String, modifiedOn: String, paymentMode: String, returnShipmentId: String, status: String, transactionId: String, transactionType: TransactionTypeSchema) {
            
            self.transactionId = transactionId
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.status = status
            
            self.aggregatorName = aggregatorName
            
            self.transactionType = transactionType
            
            self.paymentMode = paymentMode
            
            self.amount = amount
            
            self.message = message
            
            self.returnShipmentId = returnShipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transactionId = try container.decode(String.self, forKey: .transactionId)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                transactionType = try container.decode(TransactionTypeSchema.self, forKey: .transactionType)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                returnShipmentId = try container.decode(String.self, forKey: .returnShipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(returnShipmentId, forKey: .returnShipmentId)
            
            
        }
        
    }
}


