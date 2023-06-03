

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var pdfLinks: PDFLinks?

        public var affiliateId: String?

        public var shipmentMeta: ShipmentMeta

        public var affiliateMeta: AffiliateMeta

        public var adId: String?

        public var affiliateShipmentId: String

        public var affiliateStoreId: String

        public var affiliateBagId: String

        public var companyAffiliateTag: String?

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case affiliateId = "affiliate_id"

            case shipmentMeta = "shipment_meta"

            case affiliateMeta = "affiliate_meta"

            case adId = "ad_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateBagId = "affiliate_bag_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.pdfLinks = pdfLinks

            self.affiliateId = affiliateId

            self.shipmentMeta = shipmentMeta

            self.affiliateMeta = affiliateMeta

            self.adId = adId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateBagId = affiliateBagId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var pdfLinks: PDFLinks?

        public var affiliateId: String?

        public var shipmentMeta: ShipmentMeta

        public var affiliateMeta: AffiliateMeta

        public var adId: String?

        public var affiliateShipmentId: String

        public var affiliateStoreId: String

        public var affiliateBagId: String

        public var companyAffiliateTag: String?

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case affiliateId = "affiliate_id"

            case shipmentMeta = "shipment_meta"

            case affiliateMeta = "affiliate_meta"

            case adId = "ad_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateBagId = "affiliate_bag_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.pdfLinks = pdfLinks

            self.affiliateId = affiliateId

            self.shipmentMeta = shipmentMeta

            self.affiliateMeta = affiliateMeta

            self.adId = adId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateBagId = affiliateBagId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
