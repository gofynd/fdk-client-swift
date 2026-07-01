

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundModeData
        Used By: Order
    */
    class RefundModeData: Codable {
        
        public var identifier: String?
        
        public var amountPaid: Double?
        
        public var refundAmount: Double?
        
        public var refundStatus: RefundStatus?
        
        public var remarks: String?
        
        public var beneficiaryDetails: BeneficiaryDetails?
        
        public var meta: [String: Any]?
        
        public var refundMode: String?
        
        public var logo: String?
        
        public var displayName: String?
        
        public var paymentIdentifiers: [String]?
        
        public var operationalStatus: String?
        
        public var transactionData: [String: Any]?
        
        public var defaultRefundMode: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case amountPaid = "amount_paid"
            
            case refundAmount = "refund_amount"
            
            case refundStatus = "refund_status"
            
            case remarks = "remarks"
            
            case beneficiaryDetails = "beneficiary_details"
            
            case meta = "meta"
            
            case refundMode = "refund_mode"
            
            case logo = "logo"
            
            case displayName = "display_name"
            
            case paymentIdentifiers = "payment_identifiers"
            
            case operationalStatus = "operational_status"
            
            case transactionData = "transaction_data"
            
            case defaultRefundMode = "default_refund_mode"
            
        }

        public init(amountPaid: Double? = nil, beneficiaryDetails: BeneficiaryDetails? = nil, defaultRefundMode: Bool? = nil, displayName: String? = nil, identifier: String? = nil, logo: String? = nil, meta: [String: Any]? = nil, operationalStatus: String? = nil, paymentIdentifiers: [String]? = nil, refundAmount: Double? = nil, refundMode: String? = nil, refundStatus: RefundStatus? = nil, remarks: String? = nil, transactionData: [String: Any]? = nil) {
            
            self.identifier = identifier
            
            self.amountPaid = amountPaid
            
            self.refundAmount = refundAmount
            
            self.refundStatus = refundStatus
            
            self.remarks = remarks
            
            self.beneficiaryDetails = beneficiaryDetails
            
            self.meta = meta
            
            self.refundMode = refundMode
            
            self.logo = logo
            
            self.displayName = displayName
            
            self.paymentIdentifiers = paymentIdentifiers
            
            self.operationalStatus = operationalStatus
            
            self.transactionData = transactionData
            
            self.defaultRefundMode = defaultRefundMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                identifier = try container.decode(String.self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundAmount = try container.decode(Double.self, forKey: .refundAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundStatus = try container.decode(RefundStatus.self, forKey: .refundStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                remarks = try container.decode(String.self, forKey: .remarks)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                beneficiaryDetails = try container.decode(BeneficiaryDetails.self, forKey: .beneficiaryDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundMode = try container.decode(String.self, forKey: .refundMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentIdentifiers = try container.decode([String].self, forKey: .paymentIdentifiers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                defaultRefundMode = try container.decode(Bool.self, forKey: .defaultRefundMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            try? container.encodeIfPresent(refundStatus, forKey: .refundStatus)
            
            
            
            try? container.encodeIfPresent(remarks, forKey: .remarks)
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(refundMode, forKey: .refundMode)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(paymentIdentifiers, forKey: .paymentIdentifiers)
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            try? container.encodeIfPresent(defaultRefundMode, forKey: .defaultRefundMode)
            
            
        }
        
    }
}
