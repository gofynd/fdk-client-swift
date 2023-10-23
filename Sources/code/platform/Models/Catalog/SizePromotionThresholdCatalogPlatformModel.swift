

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SizePromotionThreshold
        Used By: Catalog
    */

    class SizePromotionThreshold: Codable {
        
        
        public var thresholdType: String?
        
        public var thresholdValue: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case thresholdType = "threshold_type"
            
            case thresholdValue = "threshold_value"
            
        }

        public init(thresholdType: String? = nil, thresholdValue: Int? = nil) {
            
            self.thresholdType = thresholdType
            
            self.thresholdValue = thresholdValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    thresholdType = try container.decode(String.self, forKey: .thresholdType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thresholdValue = try container.decode(Int.self, forKey: .thresholdValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(thresholdType, forKey: .thresholdType)
            
            
            
            
            try? container.encodeIfPresent(thresholdValue, forKey: .thresholdValue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SizePromotionThreshold
        Used By: Catalog
    */

    class SizePromotionThreshold: Codable {
        
        
        public var thresholdType: String?
        
        public var thresholdValue: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case thresholdType = "threshold_type"
            
            case thresholdValue = "threshold_value"
            
        }

        public init(thresholdType: String? = nil, thresholdValue: Int? = nil) {
            
            self.thresholdType = thresholdType
            
            self.thresholdValue = thresholdValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    thresholdType = try container.decode(String.self, forKey: .thresholdType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thresholdValue = try container.decode(Int.self, forKey: .thresholdValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(thresholdType, forKey: .thresholdType)
            
            
            
            
            try? container.encodeIfPresent(thresholdValue, forKey: .thresholdValue)
            
            
        }
        
    }
}


