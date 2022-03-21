import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: ApplicationServiceabilityConfig
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfig: Codable {
        
        
        public var serviceabilityType: String
        
        public var channelType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case channelType = "channel_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            
            self.serviceabilityType = serviceabilityType
            
            self.channelType = channelType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> ApplicationServiceabilityConfig {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfigResponse
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfigResponse: Codable {
        
        
        public var success: Bool
        
        public var error: ErrorResponse?
        
        public var data: ApplicationServiceabilityConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
            case data = "data"
            
        }

        public init(data: ApplicationServiceabilityConfig?, error: ErrorResponse?, success: Bool) {
            
            self.success = success
            
            self.error = error
            
            self.data = data
            
        }

        public func duplicate() -> ApplicationServiceabilityConfigResponse {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(ErrorResponse.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Request_schema
        Used By: Serviceability
    */

    class EntityRegionView_Request_schema: Codable {
        
        
        public var subType: [String]
        
        public var parentId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
        }

        public init(parentId: [String]?, subType: [String]) {
            
            self.subType = subType
            
            self.parentId = parentId
            
        }

        public func duplicate() -> EntityRegionView_Request_schema {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request_schema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode([String].self, forKey: .subType)
                
            
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Items
        Used By: Serviceability
    */

    class EntityRegionView_Items: Codable {
        
        
        public var subType: String
        
        public var name: String
        
        public var uid: String
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(name: String, subType: String, uid: String) {
            
            self.subType = subType
            
            self.name = name
            
            self.uid = uid
            
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Error
        Used By: Serviceability
    */

    class EntityRegionView_Error: Codable {
        
        
        public var message: String?
        
        public var value: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(message: String?, type: String?, value: String?) {
            
            self.message = message
            
            self.value = value
            
            self.type = type
            
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_page
        Used By: Serviceability
    */

    class EntityRegionView_page: Codable {
        
        
        public var itemTotal: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var current: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case current = "current"
            
            case size = "size"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.current = current
            
            self.size = size
            
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Response_schema
        Used By: Serviceability
    */

    class EntityRegionView_Response_schema: Codable {
        
        
        public var data: [EntityRegionView_Items]
        
        public var error: EntityRegionView_Error
        
        public var success: Bool
        
        public var page: EntityRegionView_page
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case error = "error"
            
            case success = "success"
            
            case page = "page"
            
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            
            self.data = data
            
            self.error = error
            
            self.success = success
            
            self.page = page
            
        }

        public func duplicate() -> EntityRegionView_Response_schema {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response_schema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([EntityRegionView_Items].self, forKey: .data)
                
            
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: ListViewSummary
        Used By: Serviceability
    */

    class ListViewSummary: Codable {
        
        
        public var totalZones: Int
        
        public var totalPincodesServed: Int
        
        public var totalActiveZones: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalZones = "total_zones"
            
            case totalPincodesServed = "total_pincodes_served"
            
            case totalActiveZones = "total_active_zones"
            
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            
            self.totalZones = totalZones
            
            self.totalPincodesServed = totalPincodesServed
            
            self.totalActiveZones = totalActiveZones
            
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalZones = try container.decode(Int.self, forKey: .totalZones)
                
            
            
            
                totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
                
            
            
            
                totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
            
            
            
            
            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
            
            
            
            
            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
            
            
        }
        
    }
    
    /*
        Model: ZoneDataItem
        Used By: Serviceability
    */

    class ZoneDataItem: Codable {
        
        
        public var itemTotal: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var current: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case current = "current"
            
            case size = "size"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.current = current
            
            self.size = size
            
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: ListViewChannels
        Used By: Serviceability
    */

    class ListViewChannels: Codable {
        
        
        public var channelType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelType = "channel_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelType = channelType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> ListViewChannels {
            let dict = self.dictionary!
            let copy = ListViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: ListViewProduct
        Used By: Serviceability
    */

    class ListViewProduct: Codable {
        
        
        public var type: String
        
        public var count: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case count = "count"
            
        }

        public init(count: Int, type: String) {
            
            self.type = type
            
            self.count = count
            
        }

        public func duplicate() -> ListViewProduct {
            let dict = self.dictionary!
            let copy = ListViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var storesCount: Int
        
        public var name: String
        
        public var id: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var channels: ListViewChannels
        
        public var product: ListViewProduct
        
        public var isActive: Bool
        
        public var pincodesCount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case storesCount = "stores_count"
            
            case name = "name"
            
            case id = "id"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case channels = "channels"
            
            case product = "product"
            
            case isActive = "is_active"
            
            case pincodesCount = "pincodes_count"
            
        }

        public init(channels: ListViewChannels, companyId: Int, id: String, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int) {
            
            self.storesCount = storesCount
            
            self.name = name
            
            self.id = id
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.channels = channels
            
            self.product = product
            
            self.isActive = isActive
            
            self.pincodesCount = pincodesCount
            
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
        }
        
    }
    
    /*
        Model: ListViewResponse
        Used By: Serviceability
    */

    class ListViewResponse: Codable {
        
        
        public var summary: [ListViewSummary]
        
        public var page: [ZoneDataItem]
        
        public var items: [ListViewItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case summary = "summary"
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            
            self.summary = summary
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                summary = try container.decode([ListViewSummary].self, forKey: .summary)
                
            
            
            
                page = try container.decode([ZoneDataItem].self, forKey: .page)
                
            
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_PageItems
        Used By: Serviceability
    */

    class CompanyStoreView_PageItems: Codable {
        
        
        public var itemTotal: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var current: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case current = "current"
            
            case size = "size"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.current = current
            
            self.size = size
            
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_Response_schema
        Used By: Serviceability
    */

    class CompanyStoreView_Response_schema: Codable {
        
        
        public var page: [CompanyStoreView_PageItems]
        
        public var items: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> CompanyStoreView_Response_schema {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response_schema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: ZoneRequest
        Used By: Serviceability
    */

    class ZoneRequest: Codable {
        
        
        public var data: [String: Any]
        
        public var identifier: String
        
        public var channels: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case identifier = "identifier"
            
            case channels = "channels"
            
        }

        public init(channels: [[String: Any]], data: [String: Any], identifier: String) {
            
            self.data = data
            
            self.identifier = identifier
            
            self.channels = channels
            
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([String: Any].self, forKey: .data)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                channels = try container.decode([[String: Any]].self, forKey: .channels)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
        }
        
    }
    
    /*
        Model: ZoneResponse
        Used By: Serviceability
    */

    class ZoneResponse: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var zoneId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case zoneId = "zone_id"
            
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.zoneId = zoneId
            
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
    
    /*
        Model: ZoneSuccessResponse
        Used By: Serviceability
    */

    class ZoneSuccessResponse: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.success = success
            
            self.statusCode = statusCode
            
        }

        public func duplicate() -> ZoneSuccessResponse {
            let dict = self.dictionary!
            let copy = ZoneSuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewChannels
        Used By: Serviceability
    */

    class GetZoneDataViewChannels: Codable {
        
        
        public var channelType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelType = "channel_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelType = channelType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> GetZoneDataViewChannels {
            let dict = self.dictionary!
            let copy = GetZoneDataViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewProduct
        Used By: Serviceability
    */

    class GetZoneDataViewProduct: Codable {
        
        
        public var type: String
        
        public var count: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case count = "count"
            
        }

        public init(count: Int, type: String) {
            
            self.type = type
            
            self.count = count
            
        }

        public func duplicate() -> GetZoneDataViewProduct {
            let dict = self.dictionary!
            let copy = GetZoneDataViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewItems
        Used By: Serviceability
    */

    class GetZoneDataViewItems: Codable {
        
        
        public var zoneId: String
        
        public var storesCount: Int
        
        public var name: String
        
        public var slug: String
        
        public var channels: GetZoneDataViewChannels
        
        public var pincodesCount: Int
        
        public var product: GetZoneDataViewProduct
        
        public var isActive: Bool
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case storesCount = "stores_count"
            
            case name = "name"
            
            case slug = "slug"
            
            case channels = "channels"
            
            case pincodesCount = "pincodes_count"
            
            case product = "product"
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
        }

        public init(channels: GetZoneDataViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: GetZoneDataViewProduct, slug: String, storesCount: Int, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.storesCount = storesCount
            
            self.name = name
            
            self.slug = slug
            
            self.channels = channels
            
            self.pincodesCount = pincodesCount
            
            self.product = product
            
            self.isActive = isActive
            
            self.companyId = companyId
            
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                channels = try container.decode(GetZoneDataViewChannels.self, forKey: .channels)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                product = try container.decode(GetZoneDataViewProduct.self, forKey: .product)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
    
    /*
        Model: GetSingleZoneDataViewResponse
        Used By: Serviceability
    */

    class GetSingleZoneDataViewResponse: Codable {
        
        
        public var data: [GetZoneDataViewItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [GetZoneDataViewItems]) {
            
            self.data = data
            
        }

        public func duplicate() -> GetSingleZoneDataViewResponse {
            let dict = self.dictionary!
            let copy = GetSingleZoneDataViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([GetZoneDataViewItems].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewRequest
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewRequest: Codable {
        
        
        public var country: String
        
        public var pincode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case pincode = "pincode"
            
        }

        public init(country: String, pincode: String) {
            
            self.country = country
            
            self.pincode = pincode
            
        }

        public func duplicate() -> GetZoneFromPincodeViewRequest {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewResponse
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewResponse: Codable {
        
        
        public var serviceabilityType: String
        
        public var zones: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case zones = "zones"
            
        }

        public init(serviceabilityType: String, zones: [String]) {
            
            self.serviceabilityType = serviceabilityType
            
            self.zones = zones
            
        }

        public func duplicate() -> GetZoneFromPincodeViewResponse {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                zones = try container.decode([String].self, forKey: .zones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
    
}
