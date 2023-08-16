

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RepaymentRequestDetails
        Used By: Payment
    */

    class RepaymentRequestDetails: Codable {
        
        
        public var fwdShipmentId: String
        
        public var aggregator: String
        
        public var currentStatus: String
        
        public var merchantOrderId: String
        
        public var amount: Double
        
        public var paymentMode: String
        
        public var outstandingDetailsId: Int
        
        public var aggregatorTransactionId: String
        
        public var aggregatorOrderId: String
        
        public var paymentModeIdentifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fwdShipmentId = "fwd_shipment_id"
            
            case aggregator = "aggregator"
            
            case currentStatus = "current_status"
            
            case merchantOrderId = "merchant_order_id"
            
            case amount = "amount"
            
            case paymentMode = "payment_mode"
            
            case outstandingDetailsId = "outstanding_details_id"
            
            case aggregatorTransactionId = "aggregator_transaction_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            
            self.fwdShipmentId = fwdShipmentId
            
            self.aggregator = aggregator
            
            self.currentStatus = currentStatus
            
            self.merchantOrderId = merchantOrderId
            
            self.amount = amount
            
            self.paymentMode = paymentMode
            
            self.outstandingDetailsId = outstandingDetailsId
            
            self.aggregatorTransactionId = aggregatorTransactionId
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
            
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
                
            
            
            
                aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
                
            
            
            
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
            
            
            
                paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RepaymentRequestDetails
        Used By: Payment
    */

    class RepaymentRequestDetails: Codable {
        
        
        public var fwdShipmentId: String
        
        public var aggregator: String
        
        public var currentStatus: String
        
        public var merchantOrderId: String
        
        public var amount: Double
        
        public var paymentMode: String
        
        public var outstandingDetailsId: Int
        
        public var aggregatorTransactionId: String
        
        public var aggregatorOrderId: String
        
        public var paymentModeIdentifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fwdShipmentId = "fwd_shipment_id"
            
            case aggregator = "aggregator"
            
            case currentStatus = "current_status"
            
            case merchantOrderId = "merchant_order_id"
            
            case amount = "amount"
            
            case paymentMode = "payment_mode"
            
            case outstandingDetailsId = "outstanding_details_id"
            
            case aggregatorTransactionId = "aggregator_transaction_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            
            self.fwdShipmentId = fwdShipmentId
            
            self.aggregator = aggregator
            
            self.currentStatus = currentStatus
            
            self.merchantOrderId = merchantOrderId
            
            self.amount = amount
            
            self.paymentMode = paymentMode
            
            self.outstandingDetailsId = outstandingDetailsId
            
            self.aggregatorTransactionId = aggregatorTransactionId
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
            
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
                
            
            
            
                aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
                
            
            
            
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
            
            
            
                paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
        }
        
    }
}


