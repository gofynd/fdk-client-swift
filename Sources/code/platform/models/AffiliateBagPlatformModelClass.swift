

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var discount: Double

        public var storeId: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var avlQty: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var id: String

        public var priceEffective: Double

        public var itemSize: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var sku: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case discount

            case storeId = "store_id"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case id = "_id"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case sku

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.discount = discount

            self.storeId = storeId

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.id = id

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.sku = sku

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
