

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentsRequestSchema
        Used By: Order
    */
    class ShipmentsRequestSchema: Codable {
        
        public var reasons: ReasonsData?
        
        public var products: [Products]?
        
        public var dataUpdates: DataUpdates?
        
        public var transitionComments: [TransitionComments]?
        
        public var identifier: String
        
        public var refundModes: [RefundModeTransitionData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case products = "products"
            
            case dataUpdates = "data_updates"
            
            case transitionComments = "transition_comments"
            
            case identifier = "identifier"
            
            case refundModes = "refund_modes"
            
        }

        public init(dataUpdates: DataUpdates? = nil, identifier: String, products: [Products]? = nil, reasons: ReasonsData? = nil, refundModes: [RefundModeTransitionData]? = nil, transitionComments: [TransitionComments]? = nil) {
            
            self.reasons = reasons
            
            self.products = products
            
            self.dataUpdates = dataUpdates
            
            self.transitionComments = transitionComments
            
            self.identifier = identifier
            
            self.refundModes = refundModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                reasons = try container.decode(ReasonsData.self, forKey: .reasons)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                products = try container.decode([Products].self, forKey: .products)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dataUpdates = try container.decode(DataUpdates.self, forKey: .dataUpdates)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                transitionComments = try container.decode([TransitionComments].self, forKey: .transitionComments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            identifier = try container.decode(String.self, forKey: .identifier)
            
            
            
            
            do {
                refundModes = try container.decode([RefundModeTransitionData].self, forKey: .refundModes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)
            
            
            
            try? container.encodeIfPresent(transitionComments, forKey: .transitionComments)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(refundModes, forKey: .refundModes)
            
            
        }
        
    }
}
