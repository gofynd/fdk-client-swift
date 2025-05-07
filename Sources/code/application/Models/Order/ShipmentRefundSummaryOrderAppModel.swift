

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentRefundSummary
        Used By: Order
    */
    class ShipmentRefundSummary: Codable {
        
        public var amount: Double?
        
        public var mode: String?
        
        public var modeDisplayName: String?
        
        public var refundStatus: String?
        
        public var refundInitiatedAt: String?
        
        public var refundUpdatedAt: String?
        
        public var meta: ShipmentRefundSummaryMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case mode = "mode"
            
            case modeDisplayName = "mode_display_name"
            
            case refundStatus = "refund_status"
            
            case refundInitiatedAt = "refund_initiated_at"
            
            case refundUpdatedAt = "refund_updated_at"
            
            case meta = "meta"
            
        }

        public init(amount: Double? = nil, meta: ShipmentRefundSummaryMeta? = nil, mode: String? = nil, modeDisplayName: String? = nil, refundInitiatedAt: String? = nil, refundStatus: String? = nil, refundUpdatedAt: String? = nil) {
            
            self.amount = amount
            
            self.mode = mode
            
            self.modeDisplayName = modeDisplayName
            
            self.refundStatus = refundStatus
            
            self.refundInitiatedAt = refundInitiatedAt
            
            self.refundUpdatedAt = refundUpdatedAt
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                amount = try container.decode(Double.self, forKey: .amount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mode = try container.decode(String.self, forKey: .mode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modeDisplayName = try container.decode(String.self, forKey: .modeDisplayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundStatus = try container.decode(String.self, forKey: .refundStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundInitiatedAt = try container.decode(String.self, forKey: .refundInitiatedAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundUpdatedAt = try container.decode(String.self, forKey: .refundUpdatedAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(ShipmentRefundSummaryMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(modeDisplayName, forKey: .modeDisplayName)
            
            
            
            try? container.encodeIfPresent(refundStatus, forKey: .refundStatus)
            
            
            
            try? container.encodeIfPresent(refundInitiatedAt, forKey: .refundInitiatedAt)
            
            
            
            try? container.encodeIfPresent(refundUpdatedAt, forKey: .refundUpdatedAt)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
