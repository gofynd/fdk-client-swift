

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var id: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var companyId: Int

        public var priceEffective: Double

        public var itemId: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var sku: String

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var priceMarked: Double

        public var storeId: Int

        public var identifier: [String: Any]

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case sku

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case identifier

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.identifier = identifier

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
