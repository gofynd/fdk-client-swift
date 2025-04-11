

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderData
        Used By: Payment
    */

    class OrderData: Codable {
        
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var status: StatusSchema
        
        public var amount: Double
        
        public var paidAmount: Double
        
        public var device: DeviceTypeSchema
        
        public var transactions: [TransactionData]
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case status = "status"
            
            case amount = "amount"
            
            case paidAmount = "paid_amount"
            
            case device = "device"
            
            case transactions = "transactions"
            
        }

        public init(amount: Double, createdOn: String, device: DeviceTypeSchema, modifiedOn: String, paidAmount: Double, status: StatusSchema, transactions: [TransactionData]) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.status = status
            
            self.amount = amount
            
            self.paidAmount = paidAmount
            
            self.device = device
            
            self.transactions = transactions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                status = try container.decode(StatusSchema.self, forKey: .status)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                paidAmount = try container.decode(Double.self, forKey: .paidAmount)
                
            
            
            
                device = try container.decode(DeviceTypeSchema.self, forKey: .device)
                
            
            
            
                transactions = try container.decode([TransactionData].self, forKey: .transactions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paidAmount, forKey: .paidAmount)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(transactions, forKey: .transactions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderData
        Used By: Payment
    */

    class OrderData: Codable {
        
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var status: StatusSchema
        
        public var amount: Double
        
        public var paidAmount: Double
        
        public var device: DeviceTypeSchema
        
        public var transactions: [TransactionData]
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case status = "status"
            
            case amount = "amount"
            
            case paidAmount = "paid_amount"
            
            case device = "device"
            
            case transactions = "transactions"
            
        }

        public init(amount: Double, createdOn: String, device: DeviceTypeSchema, modifiedOn: String, paidAmount: Double, status: StatusSchema, transactions: [TransactionData]) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.status = status
            
            self.amount = amount
            
            self.paidAmount = paidAmount
            
            self.device = device
            
            self.transactions = transactions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                status = try container.decode(StatusSchema.self, forKey: .status)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                paidAmount = try container.decode(Double.self, forKey: .paidAmount)
                
            
            
            
                device = try container.decode(DeviceTypeSchema.self, forKey: .device)
                
            
            
            
                transactions = try container.decode([TransactionData].self, forKey: .transactions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paidAmount, forKey: .paidAmount)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(transactions, forKey: .transactions)
            
            
        }
        
    }
}


