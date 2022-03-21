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
        Model: ServiceabilityrErrorResponse
        Used By: Serviceability
    */

    class ServiceabilityrErrorResponse: Codable {
        
        
        public var value: String
        
        public var type: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
            case message = "message"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.value = value
            
            self.type = type
            
            self.message = message
            
        }

        public func duplicate() -> ServiceabilityrErrorResponse {
            let dict = self.dictionary!
            let copy = ServiceabilityrErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfigResponse
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfigResponse: Codable {
        
        
        public var data: ApplicationServiceabilityConfig?
        
        public var error: ServiceabilityrErrorResponse?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(data: ApplicationServiceabilityConfig?, error: ServiceabilityrErrorResponse?, success: Bool) {
            
            self.data = data
            
            self.error = error
            
            self.success = success
            
        }

        public func duplicate() -> ApplicationServiceabilityConfigResponse {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Request
        Used By: Serviceability
    */

    class EntityRegionView_Request: Codable {
        
        
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

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
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
        
        
        public var uid: String
        
        public var name: String
        
        public var subType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
            case subType = "sub_type"
            
        }

        public init(name: String, subType: String, uid: String) {
            
            self.uid = uid
            
            self.name = name
            
            self.subType = subType
            
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_page
        Used By: Serviceability
    */

    class EntityRegionView_page: Codable {
        
        
        public var size: Int
        
        public var hasNext: Bool
        
        public var itemTotal: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.size = size
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Error
        Used By: Serviceability
    */

    class EntityRegionView_Error: Codable {
        
        
        public var value: String?
        
        public var type: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
            case message = "message"
            
        }

        public init(message: String?, type: String?, value: String?) {
            
            self.value = value
            
            self.type = type
            
            self.message = message
            
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Response
        Used By: Serviceability
    */

    class EntityRegionView_Response: Codable {
        
        
        public var data: [EntityRegionView_Items]
        
        public var page: EntityRegionView_page
        
        public var error: EntityRegionView_Error
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case page = "page"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            
            self.data = data
            
            self.page = page
            
            self.error = error
            
            self.success = success
            
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([EntityRegionView_Items].self, forKey: .data)
                
            
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var channels: ListViewChannels
        
        public var isActive: Bool
        
        public var product: ListViewProduct
        
        public var id: String
        
        public var pincodesCount: Int
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var storesCount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case channels = "channels"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case id = "id"
            
            case pincodesCount = "pincodes_count"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case storesCount = "stores_count"
            
        }

        public init(channels: ListViewChannels, companyId: Int, id: String, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int) {
            
            self.channels = channels
            
            self.isActive = isActive
            
            self.product = product
            
            self.id = id
            
            self.pincodesCount = pincodesCount
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.storesCount = storesCount
            
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
        }
        
    }
    
    /*
        Model: ZoneDataItem
        Used By: Serviceability
    */

    class ZoneDataItem: Codable {
        
        
        public var size: Int
        
        public var hasNext: Bool
        
        public var itemTotal: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.size = size
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: ListViewSummary
        Used By: Serviceability
    */

    class ListViewSummary: Codable {
        
        
        public var totalPincodesServed: Int
        
        public var totalZones: Int
        
        public var totalActiveZones: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalPincodesServed = "total_pincodes_served"
            
            case totalZones = "total_zones"
            
            case totalActiveZones = "total_active_zones"
            
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            
            self.totalPincodesServed = totalPincodesServed
            
            self.totalZones = totalZones
            
            self.totalActiveZones = totalActiveZones
            
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
                
            
            
            
                totalZones = try container.decode(Int.self, forKey: .totalZones)
                
            
            
            
                totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
            
            
            
            
            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
            
            
            
            
            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
            
            
        }
        
    }
    
    /*
        Model: ListViewResponse
        Used By: Serviceability
    */

    class ListViewResponse: Codable {
        
        
        public var items: [ListViewItems]
        
        public var page: [ZoneDataItem]
        
        public var summary: [ListViewSummary]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case summary = "summary"
            
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            
            self.items = items
            
            self.page = page
            
            self.summary = summary
            
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
            
                page = try container.decode([ZoneDataItem].self, forKey: .page)
                
            
            
            
                summary = try container.decode([ListViewSummary].self, forKey: .summary)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_PageItems
        Used By: Serviceability
    */

    class CompanyStoreView_PageItems: Codable {
        
        
        public var size: Int
        
        public var hasNext: Bool
        
        public var itemTotal: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.size = size
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_Response
        Used By: Serviceability
    */

    class CompanyStoreView_Response: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [CompanyStoreView_PageItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
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
        
        
        public var statusCode: Int
        
        public var zoneId: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case zoneId = "zone_id"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            
            self.statusCode = statusCode
            
            self.zoneId = zoneId
            
            self.success = success
            
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ZoneSuccessResponse
        Used By: Serviceability
    */

    class ZoneSuccessResponse: Codable {
        
        
        public var statusCode: Int
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        public func duplicate() -> ZoneSuccessResponse {
            let dict = self.dictionary!
            let copy = ZoneSuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var channels: GetZoneDataViewChannels
        
        public var isActive: Bool
        
        public var product: GetZoneDataViewProduct
        
        public var pincodesCount: Int
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var storesCount: Int
        
        public var zoneId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channels = "channels"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case pincodesCount = "pincodes_count"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case storesCount = "stores_count"
            
            case zoneId = "zone_id"
            
        }

        public init(channels: GetZoneDataViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: GetZoneDataViewProduct, slug: String, storesCount: Int, zoneId: String) {
            
            self.channels = channels
            
            self.isActive = isActive
            
            self.product = product
            
            self.pincodesCount = pincodesCount
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.storesCount = storesCount
            
            self.zoneId = zoneId
            
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channels = try container.decode(GetZoneDataViewChannels.self, forKey: .channels)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(GetZoneDataViewProduct.self, forKey: .product)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
    
    /*
        Model: GetSingleZoneDataViewResponse
        Used By: Serviceability
    */

    class GetSingleZoneDataViewResponse: Codable {
        
        
        public var data: GetZoneDataViewItems
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: GetZoneDataViewItems) {
            
            self.data = data
            
        }

        public func duplicate() -> GetSingleZoneDataViewResponse {
            let dict = self.dictionary!
            let copy = GetSingleZoneDataViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(GetZoneDataViewItems.self, forKey: .data)
                
            
            
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
        
        
        public var pincode: String
        
        public var country: String
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case country = "country"
            
        }

        public init(country: String, pincode: String) {
            
            self.pincode = pincode
            
            self.country = country
            
        }

        public func duplicate() -> GetZoneFromPincodeViewRequest {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
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
