

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var quantity: Int

        public var sku: String

        public var storeId: Int

        public var priceEffective: Double

        public var unitPrice: Double

        public var id: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case quantity

            case sku

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case id = "_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.sku = sku

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.id = id

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
