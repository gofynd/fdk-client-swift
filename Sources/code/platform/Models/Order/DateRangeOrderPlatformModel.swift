

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DateRange
        Used By: Order
    */

    class DateRange: Codable {
        
        
        public var fromDate: String?
        
        public var toDate: String?
        
        public var endDate: String?
        
        public var startDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromDate = "from_date"
            
            case toDate = "to_date"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
        }

        public init(endDate: String? = nil, fromDate: String? = nil, startDate: String? = nil, toDate: String? = nil) {
            
            self.fromDate = fromDate
            
            self.toDate = toDate
            
            self.endDate = endDate
            
            self.startDate = startDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DateRange
        Used By: Order
    */

    class DateRange: Codable {
        
        
        public var fromDate: String?
        
        public var toDate: String?
        
        public var endDate: String?
        
        public var startDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromDate = "from_date"
            
            case toDate = "to_date"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
        }

        public init(endDate: String? = nil, fromDate: String? = nil, startDate: String? = nil, toDate: String? = nil) {
            
            self.fromDate = fromDate
            
            self.toDate = toDate
            
            self.endDate = endDate
            
            self.startDate = startDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
        }
        
    }
}


