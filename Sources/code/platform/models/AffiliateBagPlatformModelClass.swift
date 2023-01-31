

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var quantity: Int

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var sku: String

        public var unitPrice: Double

        public var itemId: Int

        public var id: String

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var companyId: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case quantity

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case identifier

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case sku

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case id = "_id"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.id = id

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
