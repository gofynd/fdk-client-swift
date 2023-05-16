

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var itemSize: String

        public var companyId: Int

        public var quantity: Int

        public var sku: String

        public var priceMarked: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case identifier

            case pdfLinks = "pdf_links"

            case id = "_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case companyId = "company_id"

            case quantity

            case sku

            case priceMarked = "price_marked"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.avlQty = avlQty

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.id = id

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.companyId = companyId

            self.quantity = quantity

            self.sku = sku

            self.priceMarked = priceMarked

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

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
        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var itemSize: String

        public var companyId: Int

        public var quantity: Int

        public var sku: String

        public var priceMarked: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case identifier

            case pdfLinks = "pdf_links"

            case id = "_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case companyId = "company_id"

            case quantity

            case sku

            case priceMarked = "price_marked"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.avlQty = avlQty

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.id = id

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.companyId = companyId

            self.quantity = quantity

            self.sku = sku

            self.priceMarked = priceMarked

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
