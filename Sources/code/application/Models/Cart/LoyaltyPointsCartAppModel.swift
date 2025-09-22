

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */
    class LoyaltyPoints: Codable {
        
        public var total: Double?
        
        public var description: String?
        
        public var applicable: Double?
        
        public var isApplied: Bool?
        
        public var totalPoints: Double?
        
        public var points: Double?
        
        public var amount: Double?
        
        public var mopAmount: Double?
        
        public var earnPoints: Double?
        
        public var earnPointsAmount: Double?
        
        public var earnTitle: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case description = "description"
            
            case applicable = "applicable"
            
            case isApplied = "is_applied"
            
            case totalPoints = "total_points"
            
            case points = "points"
            
            case amount = "amount"
            
            case mopAmount = "mop_amount"
            
            case earnPoints = "earn_points"
            
            case earnPointsAmount = "earn_points_amount"
            
            case earnTitle = "earn_title"
            
            case title = "title"
            
        }

        public init(amount: Double? = nil, applicable: Double? = nil, description: String? = nil, earnPoints: Double? = nil, earnPointsAmount: Double? = nil, earnTitle: String? = nil, isApplied: Bool? = nil, mopAmount: Double? = nil, points: Double? = nil, title: String? = nil, total: Double? = nil, totalPoints: Double? = nil) {
            
            self.total = total
            
            self.description = description
            
            self.applicable = applicable
            
            self.isApplied = isApplied
            
            self.totalPoints = totalPoints
            
            self.points = points
            
            self.amount = amount
            
            self.mopAmount = mopAmount
            
            self.earnPoints = earnPoints
            
            self.earnPointsAmount = earnPointsAmount
            
            self.earnTitle = earnTitle
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                total = try container.decode(Double.self, forKey: .total)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                applicable = try container.decode(Double.self, forKey: .applicable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                totalPoints = try container.decode(Double.self, forKey: .totalPoints)
            
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
                amount = try container.decode(Double.self, forKey: .amount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mopAmount = try container.decode(Double.self, forKey: .mopAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                earnPoints = try container.decode(Double.self, forKey: .earnPoints)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                earnPointsAmount = try container.decode(Double.self, forKey: .earnPointsAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                earnTitle = try container.decode(String.self, forKey: .earnTitle)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            try? container.encodeIfPresent(totalPoints, forKey: .totalPoints)
            
            
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(mopAmount, forKey: .mopAmount)
            
            
            
            try? container.encodeIfPresent(earnPoints, forKey: .earnPoints)
            
            
            
            try? container.encodeIfPresent(earnPointsAmount, forKey: .earnPointsAmount)
            
            
            
            try? container.encodeIfPresent(earnTitle, forKey: .earnTitle)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}
