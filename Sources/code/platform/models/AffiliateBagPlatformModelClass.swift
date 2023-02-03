

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var itemId: Int

        public var itemSize: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var discount: Double

        public var sku: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var id: String

        public var storeId: Int

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var priceMarked: Double

        public var companyId: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case discount

            case sku

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.itemId = itemId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.discount = discount

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
