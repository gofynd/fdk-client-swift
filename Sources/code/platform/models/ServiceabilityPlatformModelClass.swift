import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ServiceabilityrErrorResponse
         Used By: Serviceability
     */

    class ServiceabilityrErrorResponse: Codable {
        public var value: String

        public var type: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case message
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
         Model: ApplicationServiceabilityConfig
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfig: Codable {
        public var channelType: String

        public var serviceabilityType: String

        public var channelId: String

        public enum CodingKeys: String, CodingKey {
            case channelType = "channel_type"

            case serviceabilityType = "serviceability_type"

            case channelId = "channel_id"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.channelType = channelType

            self.serviceabilityType = serviceabilityType

            self.channelId = channelId
        }

        public func duplicate() -> ApplicationServiceabilityConfig {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelType = try container.decode(String.self, forKey: .channelType)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)

            channelId = try container.decode(String.self, forKey: .channelId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)

            try? container.encodeIfPresent(channelId, forKey: .channelId)
        }
    }

    /*
         Model: ApplicationServiceabilityConfigResponse
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfigResponse: Codable {
        public var error: ServiceabilityrErrorResponse?

        public var success: Bool

        public var data: ApplicationServiceabilityConfig?

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case data
        }

        public init(data: ApplicationServiceabilityConfig?, error: ServiceabilityrErrorResponse?, success: Bool) {
            self.error = error

            self.success = success

            self.data = data
        }

        public func duplicate() -> ApplicationServiceabilityConfigResponse {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(parentId, forKey: .parentId)
        }
    }

    /*
         Model: EntityRegionView_page
         Used By: Serviceability
     */

    class EntityRegionView_page: Codable {
        public var type: String

        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.current = current
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

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
            case value

            case type

            case message
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
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var uid: String

        public var subType: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case subType = "sub_type"

            case name
        }

        public init(name: String, subType: String, uid: String) {
            self.uid = uid

            self.subType = subType

            self.name = name
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            subType = try container.decode(String.self, forKey: .subType)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: EntityRegionView_Response
         Used By: Serviceability
     */

    class EntityRegionView_Response: Codable {
        public var page: EntityRegionView_page

        public var error: EntityRegionView_Error

        public var success: Bool

        public var data: [EntityRegionView_Items]

        public enum CodingKeys: String, CodingKey {
            case page

            case error

            case success

            case data
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.page = page

            self.error = error

            self.success = success

            self.data = data
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var type: String

        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.current = current
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)
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
            case type

            case count
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
        public var pincodesCount: Int

        public var isActive: Bool

        public var channels: ListViewChannels

        public var product: ListViewProduct

        public var name: String

        public var companyId: Int

        public var storesCount: Int

        public var zoneId: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case channels

            case product

            case name

            case companyId = "company_id"

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.channels = channels

            self.product = product

            self.name = name

            self.companyId = companyId

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.slug = slug
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalZones: Int

        public var totalPincodesServed: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalZones = "total_zones"

            case totalPincodesServed = "total_pincodes_served"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalZones = totalZones

            self.totalPincodesServed = totalPincodesServed
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalZones = try container.decode(Int.self, forKey: .totalZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
        }
    }

    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var page: [ZoneDataItem]

        public var items: [ListViewItems]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.page = page

            self.items = items

            self.summary = summary
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            items = try container.decode([ListViewItems].self, forKey: .items)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }

    /*
         Model: CompanyStoreView_PageItems
         Used By: Serviceability
     */

    class CompanyStoreView_PageItems: Codable {
        public var type: String

        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.current = current
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }

    /*
         Model: CompanyStoreView_Response
         Used By: Serviceability
     */

    class CompanyStoreView_Response: Codable {
        public var page: [CompanyStoreView_PageItems]

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
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
         Model: ZoneProductTypes
         Used By: Serviceability
     */

    class ZoneProductTypes: Codable {
        public var type: String

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case type

            case tags
        }

        public init(tags: [String], type: String) {
            self.type = type

            self.tags = tags
        }

        public func duplicate() -> ZoneProductTypes {
            let dict = self.dictionary!
            let copy = ZoneProductTypes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: ZoneMappingType
         Used By: Serviceability
     */

    class ZoneMappingType: Codable {
        public var pincode: [String]?

        public var country: String

        public var state: [String]?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case country

            case state
        }

        public init(country: String, pincode: [String]?, state: [String]?) {
            self.pincode = pincode

            self.country = country

            self.state = state
        }

        public func duplicate() -> ZoneMappingType {
            let dict = self.dictionary!
            let copy = ZoneMappingType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }

    /*
         Model: UpdateZoneData
         Used By: Serviceability
     */

    class UpdateZoneData: Codable {
        public var isActive: Bool

        public var channels: [GetZoneDataViewChannels]

        public var product: ZoneProductTypes

        public var name: String

        public var regionType: String

        public var zoneId: String

        public var slug: String

        public var companyId: Int

        public var mapping: [ZoneMappingType]

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case channels

            case product

            case name

            case regionType = "region_type"

            case zoneId = "zone_id"

            case slug

            case companyId = "company_id"

            case mapping

            case storeIds = "store_ids"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            self.isActive = isActive

            self.channels = channels

            self.product = product

            self.name = name

            self.regionType = regionType

            self.zoneId = zoneId

            self.slug = slug

            self.companyId = companyId

            self.mapping = mapping

            self.storeIds = storeIds
        }

        public func duplicate() -> UpdateZoneData {
            let dict = self.dictionary!
            let copy = UpdateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            regionType = try container.decode(String.self, forKey: .regionType)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            companyId = try container.decode(Int.self, forKey: .companyId)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }

    /*
         Model: ZoneUpdateRequest
         Used By: Serviceability
     */

    class ZoneUpdateRequest: Codable {
        public var identifier: String

        public var data: UpdateZoneData

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: UpdateZoneData, identifier: String) {
            self.identifier = identifier

            self.data = data
        }

        public func duplicate() -> ZoneUpdateRequest {
            let dict = self.dictionary!
            let copy = ZoneUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            data = try container.decode(UpdateZoneData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
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
            case success

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
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var pincodesCount: Int

        public var isActive: Bool

        public var channels: [GetZoneDataViewChannels]

        public var product: ZoneProductTypes

        public var name: String

        public var regionType: String

        public var storesCount: Int

        public var zoneId: String

        public var slug: String

        public var companyId: Int

        public var mapping: [ZoneMappingType]

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case channels

            case product

            case name

            case regionType = "region_type"

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case slug

            case companyId = "company_id"

            case mapping

            case storeIds = "store_ids"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.channels = channels

            self.product = product

            self.name = name

            self.regionType = regionType

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.slug = slug

            self.companyId = companyId

            self.mapping = mapping

            self.storeIds = storeIds
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            regionType = try container.decode(String.self, forKey: .regionType)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            companyId = try container.decode(Int.self, forKey: .companyId)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }

    /*
         Model: GetSingleZoneDataViewResponse
         Used By: Serviceability
     */

    class GetSingleZoneDataViewResponse: Codable {
        public var data: GetZoneDataViewItems

        public enum CodingKeys: String, CodingKey {
            case data
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
         Model: CreateZoneData
         Used By: Serviceability
     */

    class CreateZoneData: Codable {
        public var isActive: Bool

        public var channels: [GetZoneDataViewChannels]

        public var product: ZoneProductTypes

        public var name: String

        public var regionType: String

        public var slug: String

        public var companyId: Int

        public var mapping: [ZoneMappingType]

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case channels

            case product

            case name

            case regionType = "region_type"

            case slug

            case companyId = "company_id"

            case mapping

            case storeIds = "store_ids"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int]) {
            self.isActive = isActive

            self.channels = channels

            self.product = product

            self.name = name

            self.regionType = regionType

            self.slug = slug

            self.companyId = companyId

            self.mapping = mapping

            self.storeIds = storeIds
        }

        public func duplicate() -> CreateZoneData {
            let dict = self.dictionary!
            let copy = CreateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            regionType = try container.decode(String.self, forKey: .regionType)

            slug = try container.decode(String.self, forKey: .slug)

            companyId = try container.decode(Int.self, forKey: .companyId)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }

    /*
         Model: ZoneRequest
         Used By: Serviceability
     */

    class ZoneRequest: Codable {
        public var identifier: String

        public var data: CreateZoneData

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: CreateZoneData, identifier: String) {
            self.identifier = identifier

            self.data = data
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            data = try container.decode(CreateZoneData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var zoneId: String

        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case success

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.zoneId = zoneId

            self.success = success

            self.statusCode = statusCode
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
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
            case pincode

            case country
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

            case zones
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
