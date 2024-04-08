

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArithmeticOperationsV2
        Used By: Serviceability
    */

    class ArithmeticOperationsV2: Codable {
        
        
        public var lt: String?
        
        public var gt: String?
        
        public var lte: String?
        
        public var gte: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lt = "lt"
            
            case gt = "gt"
            
            case lte = "lte"
            
            case gte = "gte"
            
        }

        public init(gt: String? = nil, gte: String? = nil, lt: String? = nil, lte: String? = nil) {
            
            self.lt = lt
            
            self.gt = gt
            
            self.lte = lte
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lt = try container.decode(String.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(String.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(String.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(String.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArithmeticOperationsV2
        Used By: Serviceability
    */

    class ArithmeticOperationsV2: Codable {
        
        
        public var lt: String?
        
        public var gt: String?
        
        public var lte: String?
        
        public var gte: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lt = "lt"
            
            case gt = "gt"
            
            case lte = "lte"
            
            case gte = "gte"
            
        }

        public init(gt: String? = nil, gte: String? = nil, lt: String? = nil, lte: String? = nil) {
            
            self.lt = lt
            
            self.gt = gt
            
            self.lte = lte
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lt = try container.decode(String.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(String.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(String.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(String.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}


