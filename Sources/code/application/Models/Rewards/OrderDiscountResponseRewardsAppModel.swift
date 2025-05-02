

import Foundation
public extension ApplicationClient.Rewards {
    /*
        Model: OrderDiscountResponse
        Used By: Rewards
    */
    class OrderDiscountResponse: Codable {
        
        public var orderAmount: Double?
        
        public var points: Double?
        
        public var discount: DiscountProperties?
        
        public var baseDiscount: DiscountProperties?
        
        public var appliedRuleBucket: OrderDiscountRuleBucket?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderAmount = "order_amount"
            
            case points = "points"
            
            case discount = "discount"
            
            case baseDiscount = "base_discount"
            
            case appliedRuleBucket = "applied_rule_bucket"
            
        }

        public init(appliedRuleBucket: OrderDiscountRuleBucket? = nil, baseDiscount: DiscountProperties? = nil, discount: DiscountProperties? = nil, orderAmount: Double? = nil, points: Double? = nil) {
            
            self.orderAmount = orderAmount
            
            self.points = points
            
            self.discount = discount
            
            self.baseDiscount = baseDiscount
            
            self.appliedRuleBucket = appliedRuleBucket
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                orderAmount = try container.decode(Double.self, forKey: .orderAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                points = try container.decode(Double.self, forKey: .points)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(DiscountProperties.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                baseDiscount = try container.decode(DiscountProperties.self, forKey: .baseDiscount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appliedRuleBucket = try container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
            
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(baseDiscount, forKey: .baseDiscount)
            
            
            
            try? container.encodeIfPresent(appliedRuleBucket, forKey: .appliedRuleBucket)
            
            
        }
        
    }
}
