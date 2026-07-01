

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CustomerRadiusSchema
        Used By: Serviceability
    */

    class CustomerRadiusSchema: Codable {
        
        
        public var unit: String?
        
        public var lt: Int?
        
        public var lte: Int?
        
        public var gt: Int?
        
        public var gte: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case unit = "unit"
            
            case lt = "lt"
            
            case lte = "lte"
            
            case gt = "gt"
            
            case gte = "gte"
            
        }

        public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil, unit: String? = nil) {
            
            self.unit = unit
            
            self.lt = lt
            
            self.lte = lte
            
            self.gt = gt
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lt = try container.decode(Int.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(Int.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(Int.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(Int.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CustomerRadiusSchema
        Used By: Serviceability
    */

    class CustomerRadiusSchema: Codable {
        
        
        public var unit: String?
        
        public var lt: Int?
        
        public var lte: Int?
        
        public var gt: Int?
        
        public var gte: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case unit = "unit"
            
            case lt = "lt"
            
            case lte = "lte"
            
            case gt = "gt"
            
            case gte = "gte"
            
        }

        public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil, unit: String? = nil) {
            
            self.unit = unit
            
            self.lt = lt
            
            self.lte = lte
            
            self.gt = gt
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lt = try container.decode(Int.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(Int.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(Int.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(Int.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}


