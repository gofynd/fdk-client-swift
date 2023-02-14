

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var shipmentMeta: ShipmentMeta

        public var affiliateBagId: String

        public var affiliateMeta: AffiliateMeta

        public var affiliateStoreId: String

        public var affiliateShipmentId: String

        public var companyAffiliateTag: String?

        public var adId: String?

        public var affiliateOrderId: String

        public var pdfLinks: PDFLinks?

        public var affiliateId: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentMeta = "shipment_meta"

            case affiliateBagId = "affiliate_bag_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case adId = "ad_id"

            case affiliateOrderId = "affiliate_order_id"

            case pdfLinks = "pdf_links"

            case affiliateId = "affiliate_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.shipmentMeta = shipmentMeta

            self.affiliateBagId = affiliateBagId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.affiliateShipmentId = affiliateShipmentId

            self.companyAffiliateTag = companyAffiliateTag

            self.adId = adId

            self.affiliateOrderId = affiliateOrderId

            self.pdfLinks = pdfLinks

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
