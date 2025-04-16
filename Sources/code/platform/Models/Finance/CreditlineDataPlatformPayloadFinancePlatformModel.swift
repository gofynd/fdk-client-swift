

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CreditlineDataPlatformPayload
        Used By: Finance
    */

    class CreditlineDataPlatformPayload: Codable {
        
        
        public var page: Int?
        
        public var sellerId: String?
        
        public var endDate: String?
        
        public var startDate: String?
        
        public var pageSize: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case sellerId = "seller_id"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
            case pageSize = "page_size"
            
        }

        public init(endDate: String? = nil, page: Int? = nil, pageSize: Int? = nil, sellerId: String? = nil, startDate: String? = nil) {
            
            self.page = page
            
            self.sellerId = sellerId
            
            self.endDate = endDate
            
            self.startDate = startDate
            
            self.pageSize = pageSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(String.self, forKey: .sellerId)
                
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
                
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
        }
        
    }
}




