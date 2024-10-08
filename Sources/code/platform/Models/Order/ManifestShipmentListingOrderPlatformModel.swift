

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestShipmentListing
        Used By: Order
    */

    class ManifestShipmentListing: Codable {
        
        
        public var totalCount: Int
        
        public var lane: String
        
        public var page: ManifestPageInfo
        
        public var success: Bool
        
        public var status: Int?
        
        public var items: [ManifestItemDetails]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCount = "total_count"
            
            case lane = "lane"
            
            case page = "page"
            
            case success = "success"
            
            case status = "status"
            
            case items = "items"
            
            case message = "message"
            
        }

        public init(items: [ManifestItemDetails], lane: String, message: String? = nil, page: ManifestPageInfo, status: Int? = nil, success: Bool, totalCount: Int) {
            
            self.totalCount = totalCount
            
            self.lane = lane
            
            self.page = page
            
            self.success = success
            
            self.status = status
            
            self.items = items
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalCount = try container.decode(Int.self, forKey: .totalCount)
                
            
            
            
                lane = try container.decode(String.self, forKey: .lane)
                
            
            
            
                page = try container.decode(ManifestPageInfo.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                items = try container.decode([ManifestItemDetails].self, forKey: .items)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestShipmentListing
        Used By: Order
    */

    class ManifestShipmentListing: Codable {
        
        
        public var totalCount: Int
        
        public var lane: String
        
        public var page: ManifestPageInfo
        
        public var success: Bool
        
        public var status: Int?
        
        public var items: [ManifestItemDetails]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCount = "total_count"
            
            case lane = "lane"
            
            case page = "page"
            
            case success = "success"
            
            case status = "status"
            
            case items = "items"
            
            case message = "message"
            
        }

        public init(items: [ManifestItemDetails], lane: String, message: String? = nil, page: ManifestPageInfo, status: Int? = nil, success: Bool, totalCount: Int) {
            
            self.totalCount = totalCount
            
            self.lane = lane
            
            self.page = page
            
            self.success = success
            
            self.status = status
            
            self.items = items
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalCount = try container.decode(Int.self, forKey: .totalCount)
                
            
            
            
                lane = try container.decode(String.self, forKey: .lane)
                
            
            
            
                page = try container.decode(ManifestPageInfo.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                items = try container.decode([ManifestItemDetails].self, forKey: .items)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


