

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateMeta: AffiliateMeta

        public var affiliateId: String?

        public var affiliateShipmentId: String

        public var adId: String?

        public var affiliateStoreId: String

        public var shipmentMeta: ShipmentMeta

        public var pdfLinks: PDFLinks?

        public var affiliateBagId: String

        public var companyAffiliateTag: String?

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case adId = "ad_id"

            case affiliateStoreId = "affiliate_store_id"

            case shipmentMeta = "shipment_meta"

            case pdfLinks = "pdf_links"

            case affiliateBagId = "affiliate_bag_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateMeta = affiliateMeta

            self.affiliateId = affiliateId

            self.affiliateShipmentId = affiliateShipmentId

            self.adId = adId

            self.affiliateStoreId = affiliateStoreId

            self.shipmentMeta = shipmentMeta

            self.pdfLinks = pdfLinks

            self.affiliateBagId = affiliateBagId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

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
        public var affiliateMeta: AffiliateMeta

        public var affiliateId: String?

        public var affiliateShipmentId: String

        public var adId: String?

        public var affiliateStoreId: String

        public var shipmentMeta: ShipmentMeta

        public var pdfLinks: PDFLinks?

        public var affiliateBagId: String

        public var companyAffiliateTag: String?

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case adId = "ad_id"

            case affiliateStoreId = "affiliate_store_id"

            case shipmentMeta = "shipment_meta"

            case pdfLinks = "pdf_links"

            case affiliateBagId = "affiliate_bag_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateMeta = affiliateMeta

            self.affiliateId = affiliateId

            self.affiliateShipmentId = affiliateShipmentId

            self.adId = adId

            self.affiliateStoreId = affiliateStoreId

            self.shipmentMeta = shipmentMeta

            self.pdfLinks = pdfLinks

            self.affiliateBagId = affiliateBagId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
