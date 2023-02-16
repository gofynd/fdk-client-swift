

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var transferPrice: Int

        public var avlQty: Int

        public var deliveryCharge: Double

        public var storeId: Int

        public var quantity: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var itemId: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var id: String

        public var modifiedOn: String

        public var itemSize: String

        public var sku: String

        public var companyId: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case quantity

            case discount

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case id = "_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case sku

            case companyId = "company_id"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.quantity = quantity

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.id = id

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.sku = sku

            self.companyId = companyId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
