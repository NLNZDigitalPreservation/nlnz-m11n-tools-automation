import nz.govt.nzqa.m11n.tools.automation.wrapper.Wrapper
import nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperElementGenerateVisitor

class Converter {
    static void main(final String[] args){
        final Wrapper wrapper = new Wrapper()

        wrapper.accept(new WrapperElementGenerateVisitor())
    }
}
