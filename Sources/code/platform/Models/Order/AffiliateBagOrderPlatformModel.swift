

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var storeId: Int

        public var amountPaid: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var sku: String

        public var id: String

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case identifier

            case unitPrice = "unit_price"

            case sku

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.sku = sku

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var storeId: Int

        public var amountPaid: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var sku: String

        public var id: String

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case identifier

            case unitPrice = "unit_price"

            case sku

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.sku = sku

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
