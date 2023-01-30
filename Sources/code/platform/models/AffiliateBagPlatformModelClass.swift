

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var quantity: Int

        public var companyId: Int

        public var amountPaid: Double

        public var id: String

        public var fyndStoreId: String

        public var itemId: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var priceMarked: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var unitPrice: Double

        public var storeId: Int

        public var sku: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case sku

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.sku = sku

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
